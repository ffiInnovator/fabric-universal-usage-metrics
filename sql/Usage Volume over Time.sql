-- report views over time
SELECT CreationDate, COUNT(*) as 'Report Views'
FROM report_views
GROUP BY ROLLUP(CreationDate)
ORDER BY CreationDate DESC;

-- report views by date and report
SELECT CreationDate, ReportId, COUNT(*) as 'Report Views'
FROM report_views
GROUP BY ROLLUP(CreationDate, ReportId)
ORDER BY CreationDate DESC, ReportId;