SELECT TOP 1 CreationDate 
FROM report_views
WHERE UsageDatasetId = UPPER('28678a20-198b-4fa5-8cb2-d211f273af85')
ORDER BY CreationDate DESC;

SELECT ReportName, MAX(Date) AS LATEST_DATE , MAX(CreationDate) AS LATEST_CREATE_DATE
FROM report_views
GROUP BY ReportName
ORDER BY LATEST_DATE DESC;