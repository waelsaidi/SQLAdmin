-----------------------------------------------------------------
-- saidi.wael.com, go ahead license
-----------------------------------------------------------------

--select * from sys.indexes where object_id= OBJECT_ID('[AdventureWorks2016].[Person].[Person]')

SELECT
	concat(allocated_page_file_id, ' |-- ' ,allocated_page_page_id ) AS [Page],
	Concat(allocated_page_iam_file_id,' |-- ',allocated_page_iam_page_id ) as IAM

	,object_id AS ObjectID
	,index_id AS IndexID
	,partition_id AS PartitionNumber
	 
	 , allocation_unit_type_desc as [Type]
	 , 
	 case page_type
	 when 1    then 'data'
	 when 2    then 'index'
	 when 3    then 'row overflow'
	 when 4    then 'lob'
	 when 8    then 'GAM'
	 when 9    then 'SGAM'
	 when 10    then 'IAM'
	 when 11    then 'PFS'
	 else cast(page_type as nvarchar(10))
 
	end as PageType
	,page_level AS Level
	, concat(next_page_file_id, ' : ' ,next_page_page_id) AS NextPage
	,concat(previous_page_file_id , ' : ' ,previous_page_page_id ) as PrevPage
FROM sys.dm_db_database_page_allocations(DB_ID(), OBJECT_ID('[AdventureWorks2016].[Person].[Person]' /* Table ;)*/), 2/* Id index ;)*/, NULL/* Id partion ;)*/, 'DETAILED')
WHERE is_allocated = 1
Order By [page_type], [Level] desc;

--B-tree

--BookMarkLookup
-- Look at the IAM content
DBCC TRACEON (3604);
GO

DBCC PAGE (AdventureWorks2016, 1, 16536, 3); -- non documentée // database , nu mero fichier , page , mode d'affichae (table)
GO

DBCC IND (AdventureWorks2016, '[Person].[Person]',-1 ); -- tooutes les pages used (-1) tt les index
GO
