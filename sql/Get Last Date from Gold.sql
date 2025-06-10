SELECT TOP 1 CreationDate
FROM report_views
WHERE UsageDatasetId = '28678A20-198B-4FA5-8CB2-D211F273AF85'
ORDER BY CreationDate DESC 
--LIMIT 1;

SELECT CreationTime
FROM report_views
WHERE UsageDatasetId = '28678A20-198B-4FA5-8CB2-D211F273AF85'
ORDER BY CreationDate DESC;

SELECT ReportName, MAX(Date) AS LATEST_DATE , MAX(CreationDate) AS LATEST_CREATE_DATE
FROM report_views
WHERE UsageDatasetId = '28678A20-198B-4FA5-8CB2-D211F273AF85'
GROUP BY ReportName
ORDER BY LATEST_DATE DESC;

SELECT UsageDatasetId, ReportName, MAX(CreationTime) AS LatestDate
FROM report_views
WHERE UsageDatasetId = '28678A20-198B-4FA5-8CB2-D211F273AF85'
GROUP BY UsageDatasetId, ReportName;

