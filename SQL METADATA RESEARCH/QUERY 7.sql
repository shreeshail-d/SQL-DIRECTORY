use information_schema;
show tables;

SELECT 
    * 
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'test_sys';
