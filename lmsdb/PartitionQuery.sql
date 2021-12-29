--horizontal partioning
--add file groups so can fetch result from that

ALTER database LMSDb 
ADD FILEGROUP Report1
GO

ALTER database LMSDb 
ADD FILEGROUP Report2
GO

--check filegroups created or not 

select name as availablefilegroups
from sys.filegroups
where type ='FG';

-- Create File group for each of the reports as we need to create data file in order to fetch results,
--report1

ALTER database [LMSDb]
ADD FILE
(
name ='Report1new',
filename='C:\Users\admin\Desktop\databaseprogramming\Report1new.ndf',
size = 3072 kb,
maxsize = unlimited,
filegrowth=1024 kb 
) to filegroup Report1

--report2

ALTER database [LMSDb]
ADD FILE
(
name ='Report2new',
filename='C:\Users\admin\Desktop\databaseprogramming\Report2new.ndf',
size = 3072 kb,
maxsize = unlimited,
filegrowth=1024 kb 
) to filegroup Report2

---Now let’s see that NDF file got created

select name as [filename],
physical_name as [filepath]
from sys.database_files
where type_desc='rows'
go
-- Creates a partition function called myRangePF1 that will partition a table into four partitions  
CREATE PARTITION FUNCTION myRangepercentt (int)  
    AS RANGE LEFT FOR VALUES (50) ;  
GO  

---To map the partitions of a partitioned table to filegroups and 
--determine the number and domain of the partitions of a partitioned table we will create a partition scheme:


-- Creates a partition scheme called myRange1 that applies myRange1 to the  filegroups created above  
CREATE PARTITION SCHEME myRange1  
    AS PARTITION myRangepercentt to (Report1, Report2);
go
	-- Creates a partitioned table called PartitionTable that uses myRangePS1 to partition cpu_percentaga  
CREATE TABLE PartitionTable (cpu_percentaga int PRIMARY KEY,  col2 char(10))  
    ON myRange1 (cpu_percentaga) ;  
GO 

--To determine if a table is partitioned
--The following query returns one or more rows if the table PartitionTable is partitioned. 
--If the table is not partitioned, no rows are returned.

SELECT *   
FROM sys.tables AS t   
JOIN sys.indexes AS i   
    ON t.[object_id] = i.[object_id]   
    AND i.[type] IN (0,1)   
JOIN sys.partition_schemes ps   
    ON i.data_space_id = ps.data_space_id   
WHERE t.name = 'PartitionTable';   
GO  
select * from CpuLogData;