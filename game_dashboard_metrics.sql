
-- #OVERVIEW_METRICS (Total Users, Total Payers, Conversion Rate, Revenue, ARPU, ARPPU, Whale Revenue)
SELECT
    COUNT(DISTINCT UserID) AS total_users, 
    COUNT(DISTINCT CASE WHEN InAppPurchaseAmount > 0 THEN UserID END) AS total_payers,
    ROUND(
        COUNT(DISTINCT CASE WHEN InAppPurchaseAmount > 0 THEN UserID END) * 100.0
        / COUNT(DISTINCT UserID), 2
    ) AS conversion_rate_pct,
    ROUND(SUM(InAppPurchaseAmount), 2) AS total_revenue,
    ROUND(SUM(InAppPurchaseAmount) / COUNT(DISTINCT UserID), 2) AS arpu,
    ROUND(
        SUM(InAppPurchaseAmount) /
        COUNT(DISTINCT CASE WHEN InAppPurchaseAmount > 0 THEN UserID END), 2
    ) AS arppu,
    ROUND(
        SUM(CASE WHEN SpendingSegment = 'Whale' 
            THEN InAppPurchaseAmount ELSE 0 END), 2
    ) AS whale_revenue
FROM `my-project-1-396010.Game.Calculated_data_game`;

-- #REVENUE_BY_GAME_GENRE (Revenue + Users theo thể loại game)
SELECT
    GameGenre,
    COUNT(DISTINCT UserID) AS total_users, 
    ROUND(SUM(InAppPurchaseAmount), 2) AS total_revenue
FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY GameGenre
ORDER BY total_revenue DESC;

-- #REVENUE_BY_PAYMENT_METHOD (Doanh thu theo phương thức thanh toán)
SELECT
    PaymentMethod,
    COUNT(DISTINCT UserID) AS total_users,
    ROUND(SUM(InAppPurchaseAmount), 2) AS total_revenue
FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY PaymentMethod
ORDER BY total_revenue DESC;

-- #REVENUE_BY_COUNTRY (Doanh thu theo quốc gia)
SELECT
    Country,
    COUNT(DISTINCT UserID) AS total_users,
    ROUND(SUM(InAppPurchaseAmount), 2) AS total_revenue
FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY Country
ORDER BY total_revenue DESC;

-- #REVENUE_SHARE_BY_DEVICE (Tỷ trọng doanh thu theo thiết bị)
SELECT
    Device,
    ROUND(SUM(InAppPurchaseAmount), 2) AS revenue_by_device,
    ROUND(
        SUM(InAppPurchaseAmount) * 100.0 /
        SUM(SUM(InAppPurchaseAmount)) OVER (), 2
    ) AS revenue_share_pct
FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY Device
ORDER BY revenue_by_device DESC;

-- #REVENUE_SHARE_BY_SPENDING_SEGMENT (Tỷ trọng doanh thu theo nhóm chi tiêu)
SELECT
    SpendingSegment,
    ROUND(SUM(InAppPurchaseAmount), 2) AS revenue_by_segment,
    ROUND(
        SUM(InAppPurchaseAmount) * 100.0 /
        SUM(SUM(InAppPurchaseAmount)) OVER (), 2
    ) AS revenue_share_pct
FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY SpendingSegment
ORDER BY revenue_by_segment DESC;

-- #SESSION_FREQUENCY_SEGMENT_ANALYSIS (Phân tích user theo tần suất chơi)
SELECT
    Session_Frequency_Group,
    Player_Frequency_Segment,
    COUNT(DISTINCT UserID) AS total_users,
    ROUND(AVG(SessionCount), 2) AS avg_session_count,
    ROUND(AVG(Total_Playtime), 2) AS avg_total_playtime,
    ROUND(SUM(InAppPurchaseAmount) / COUNT(DISTINCT UserID), 2) AS arpu_by_segment,
    ROUND(SUM(InAppPurchaseAmount), 2) AS total_revenue
FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY Session_Frequency_Group, Player_Frequency_Segment
ORDER BY Session_Frequency_Group;

-- #ARPU_ARPPU_CONVERSION_BY_PLAYER_FREQUENCY_SEGMENT
SELECT
    Player_Frequency_Segment,
    COUNT(DISTINCT UserID) AS total_users,

    -- ARPU
    ROUND(SUM(InAppPurchaseAmount) / COUNT(DISTINCT UserID),2) AS arpu,

    -- ARPPU
    ROUND(
        SUM(InAppPurchaseAmount) /
        COUNT(DISTINCT CASE WHEN InAppPurchaseAmount > 0 THEN UserID END),2
    ) AS arppu,

    -- Conversion Rate
    ROUND(
        COUNT(DISTINCT CASE WHEN InAppPurchaseAmount > 0 THEN UserID END)*100.0 /
        COUNT(DISTINCT UserID),2
    ) AS conversion_rate

FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY Player_Frequency_Segment
ORDER BY Player_Frequency_Segment;

-- #REVENUE_AND_USER_BY_AGE_GROUP
SELECT
    Age,
    COUNT(DISTINCT UserID) AS total_users,
    ROUND(SUM(InAppPurchaseAmount),2) AS total_revenue
FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY Age
ORDER BY Age;

-- #AVERAGE_PLAYTIME_BY_FREQUENCY_SEGMENT
SELECT
    Player_Frequency_Segment,
    ROUND(AVG(Total_Playtime),2) AS avg_playtime_minutes
FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY Player_Frequency_Segment
ORDER BY Player_Frequency_Segment;

-- #ARPPU_AND_CONVERSION_BY_DEVICE
SELECT
    Device,

    -- ARPPU
    ROUND(
        SUM(InAppPurchaseAmount) /
        COUNT(DISTINCT CASE WHEN InAppPurchaseAmount > 0 THEN UserID END),2
    ) AS arppu,

    -- Conversion Rate
    ROUND(
        COUNT(DISTINCT CASE WHEN InAppPurchaseAmount > 0 THEN UserID END)*100.0 /
        COUNT(DISTINCT UserID),2
    ) AS conversion_rate

FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY Device
ORDER BY arppu DESC;

-- #ARPU_PLAYTIME_REVENUE_BY_GAME_GENRE
SELECT
    GameGenre,

    -- ARPU
    ROUND(SUM(InAppPurchaseAmount) / COUNT(DISTINCT UserID),2) AS arpu,

    -- Average playtime
    ROUND(Sum(Total_Playtime),2) AS total_playtime,

    -- Total revenue
    ROUND(SUM(InAppPurchaseAmount),2) AS total_revenue

FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY GameGenre
ORDER BY total_revenue DESC;

-- #TOTAL_REVENUE_BY_SESSIONCOUNT_AND_SPENDING_SEGMENT
SELECT
    SessionCount,
    SpendingSegment,
    ROUND(SUM(InAppPurchaseAmount),2) AS total_revenue
FROM `my-project-1-396010.Game.Calculated_data_game`
GROUP BY SessionCount, SpendingSegment
ORDER BY SessionCount;

-- #REVENUE_AND_USER_BY_AGE_GROUP_10_YEAR_BIN
WITH age_binned AS (
    SELECT
        UserID,
        Age,
        InAppPurchaseAmount,
        FLOOR(Age / 10) * 10 AS age_bin_start
    FROM `my-project-1-396010.Game.Calculated_data_game`
    WHERE Age BETWEEN 10 AND 59
)

SELECT
    CONCAT(
        CAST(age_bin_start AS STRING),
        '-',
        CAST(age_bin_start + 9 AS STRING)
    ) AS age_group,
    COUNT(DISTINCT UserID) AS total_users,
    ROUND(SUM(InAppPurchaseAmount),2) AS total_revenue
FROM age_binned
GROUP BY age_bin_start
ORDER BY age_bin_start;
