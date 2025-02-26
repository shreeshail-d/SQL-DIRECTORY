SELECT 
    *,
    CASE
        WHEN query LIKE '%student%' AND query LIKE '%course%' THEN 'student, course'
        WHEN query LIKE '%student%' THEN 'student'
        WHEN query LIKE '%course%' THEN 'course'
        ELSE 'No table found'
    END AS table_name
FROM sys.statement_analysis
WHERE db = 'test_sys'
AND last_seen BETWEEN '2025-02-01 00:00:00' AND '2025-02-12 23:59:59'
AND (
    query LIKE '%INSERT%' OR
    query LIKE '%CREATE%' OR
    query LIKE '%DELETE%' OR
    query LIKE '%DROP%' OR
    query LIKE '%UPDATE%' OR
    query LIKE '%ALTER%' OR
    query LIKE '%TRUNCATE%' OR
    query LIKE '%REPLACE%' OR
    query LIKE '%MERGE%' OR
    query LIKE '%CALL%' OR
    query LIKE '%GRANT%' OR
    query LIKE '%REVOKE%'
);