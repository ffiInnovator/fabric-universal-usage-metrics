-- total duplicates
SELECT SUM(duplicate_count) AS total_duplicates
FROM (
    SELECT COUNT(*) - 1 AS duplicate_count
    FROM report_views
    GROUP BY ReportId, CreationTime
    HAVING COUNT(*) > 1
) AS duplicates;

-- total duplicates by/for a report by id
SELECT dup.ReportId, SUM(dup.duplicate_count) AS duplicate_count
FROM (
    SELECT ReportId, COUNT(*) - 1 AS duplicate_count
    FROM report_views
    GROUP BY ReportId, CreationTime
    HAVING COUNT(*) > 1
) AS dup
--WHERE LOWER(dup.ReportId) = '09c0e27e-c7ce-4ee8-a479-0955bfc6503f'
GROUP BY dup.ReportId
ORDER BY 2 DESC;

-- total duplicates by/for a report by name
SELECT dup.ReportName, SUM(dup.duplicate_count) AS duplicate_count
FROM (
    SELECT ReportName, COUNT(*) - 1 AS duplicate_count
    FROM report_views
    GROUP BY ReportName, CreationTime
    HAVING COUNT(*) > 1
) AS dup
-- WHERE LOWER(dup.ReportName) = 'power bi activity monitor report'
GROUP BY dup.ReportName
ORDER BY 2 DESC;
