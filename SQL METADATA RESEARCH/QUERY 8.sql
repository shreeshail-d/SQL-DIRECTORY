use mysql;
show tables;

SELECT 
    * 
FROM mysql.innodb_index_stats
WHERE database_name = 'test_sys'
AND last_update BETWEEN '2025-02-01 00:00:00' AND '2025-02-15 23:59:59'
ORDER BY last_update DESC;

SELECT 
    * 
FROM mysql.innodb_table_stats
WHERE last_update BETWEEN '2025-02-01 00:00:00' AND '2025-02-15 23:59:59'
ORDER BY last_update DESC;


