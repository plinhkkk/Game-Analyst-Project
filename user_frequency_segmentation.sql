  With All_data AS (
    SELECT
      *,
      --Calculate Total Playtime in Minutes
      SessionCount*AverageSessionLength as Total_Playtime,
      --Segment all users into 3 groups (1=Highest Frequency, 3=Lowest Frequency)
      NTILE(3) OVER(ORDER BY SessionCount DESC) as Session_Frequency_Group
    FROM `Game.Data_Game` ),

  Segment_data AS(
  SELECT 
    Session_Frequency_Group,
    -- Assign clear labels to the NTILE groups
    CASE Session_Frequency_Group
        WHEN 1 THEN '1. High Frequency (Top 33%)'
        WHEN 2 THEN '2. Medium Frequency'
        WHEN 3 THEN '3. Low Frequency (Bottom 33%)'
        ELSE 'Error/Unclassified'
    END AS Player_Frequency_Segment,

    Count(UserID) as Total_Users,

    -- Average playtime for users within this group
    ROUND(AVG(Total_Playtime), 0) AS Avg_Playtime_Minutes_in_Group,

    -- Total Revenue from this group
    SUM(InAppPurchaseAmount) AS Total_Revenue,
    
    -- Crucial metric: Average Revenue Per User (ARPU) for this group
    ROUND(SUM(InAppPurchaseAmount) / COUNT(UserID), 2) AS ARPU_By_Frequency,

    -- Percentage share of total revenue across all groups
    ROUND(SUM(InAppPurchaseAmount) * 100 / SUM(SUM(InAppPurchaseAmount)) OVER (), 2) AS Revenue_Share_Pct

  FROM All_data
  GROUP BY 1
  ORDER BY
    MIN(Session_Frequency_Group) ASC)

  SELECT
    *
  FROM All_data
  LEFT JOIN Segment_data
  USING(Session_Frequency_Group)
