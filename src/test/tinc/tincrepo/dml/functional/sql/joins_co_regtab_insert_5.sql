-- @author prabhd 
-- @created 2012-12-05 12:00:00 
-- @modified 2012-12-05 12:00:00 
-- @tags dml HAWQ 
-- @db_name dmldb
-- @description test5: Insert with generate_series and NULL
\echo --start_ignore
set gp_enable_column_oriented_table=on;
\echo --end_ignore
SELECT COUNT(*) FROM dml_co_r;
INSERT INTO dml_co_r values(generate_series(1,10),NULL,'text');
SELECT * FROM dml_co_r WHERE c ='text' ORDER BY 1;
SELECT COUNT(*) FROM dml_co_r;
