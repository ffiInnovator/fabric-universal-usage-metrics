SELECT 
    YEAR(CreationTime) AS ActivityYear,
    MONTH(CreationTime) AS ActivityMonth,
    DAY(CreationTime) AS ActivityDay,
    FORMAT(COUNT(ActivityId), 'N0') AS ActivityCount
FROM activities
GROUP BY 
    YEAR(CreationTime),
    MONTH(CreationTime),
    DAY(CreationTime)
ORDER BY 
    ActivityYear, ActivityMonth, ActivityDay;