/*-------------------------------------------------------------------
[SCRIPT] Index manquants  
[DATABASE] Base courante ou toutes les databases (voir clause WHERE)
[DESCRIPTION] Liste des index manquants
-------------------------------------------------------------------*/
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT   DB_NAME(mid.database_id) AS DBName
       , user_seeks * avg_total_user_cost * ( avg_user_impact * 0.01 ) AS [index_advantage]
       , migs.last_user_seek
       , migs.last_user_scan
       , mid.[statement] AS [Database.Schema.Table]
       , mid.equality_columns
       , mid.inequality_columns
       , mid.included_columns
       -- nombre de colonnes index et include
       , COALESCE(
             ( LEN(mid.equality_columns)
               - LEN(REPLACE(mid.equality_columns, ',', '')) + 1 )
           , 0)
         + COALESCE(
               ( LEN(mid.inequality_columns)
                 - LEN(REPLACE(mid.inequality_columns, ',', '')) + 1 )
             , 0) AS NbIndexCols
       , COALESCE(
             ( LEN(mid.included_columns)
               - LEN(REPLACE(mid.included_columns, ',', '')) + 1 )
           , 0) AS NbIncludedCol
       -- statistiques
       , migs.unique_compiles
       , migs.user_seeks
       , migs.user_scans
       , migs.avg_total_user_cost
       , migs.avg_user_impact
       -- commande de création d'index basée sur equality, inequality, include
       -- pour information et analyse seulement !
       , 'CREATE INDEX [ix_'
         + LEFT(REPLACE(
                    REPLACE(
                        SUBSTRING(
                            mid.statement
                          , CHARINDEX(
                                '.'
                              , mid.statement
                              , CHARINDEX('.', mid.statement) + 1) + 1
                          , LEN(mid.statement))
                      , '['
                      , '')
                  , ']'
                  , '') + '_' + CONVERT(VARCHAR(10), GETDATE(), 112) + '_'
                + REPLACE(CAST(NEWID() AS VARCHAR(36)), '-', '_'), 120)
         + '] ON '
         + SUBSTRING(
               mid.statement
             , CHARINDEX('.', mid.statement) + 1
             , CHARINDEX(
                   '.'
                 , SUBSTRING(
                       mid.statement
                     , CHARINDEX('.', mid.statement) + 1
                     , LEN(mid.statement))) - 1) + '.'
         + SUBSTRING(
               mid.statement
             , CHARINDEX('.', mid.statement, CHARINDEX('.', mid.statement) + 1)
               + 1
             , LEN(mid.statement)) + ' (' + COALESCE(mid.equality_columns, '')
         + CASE WHEN mid.equality_columns IS NOT NULL
                     AND mid.inequality_columns IS NOT NULL THEN ','
                ELSE ''
           END + COALESCE(mid.inequality_columns, '') + ')'
         + COALESCE(' INCLUDE (' + mid.included_columns + ')', '') --+' WITH (ONLINE=ON)'
       AS CreateCmd
FROM     sys.dm_db_missing_index_group_stats AS migs WITH ( NOLOCK )
         INNER JOIN sys.dm_db_missing_index_groups AS mig WITH ( NOLOCK ) ON migs.group_handle = mig.index_group_handle
         INNER JOIN sys.dm_db_missing_index_details AS mid WITH ( NOLOCK ) ON mig.index_handle = mid.index_handle
--WHERE   mid.database_id = DB_ID() -- activer pour filtrer sur la base courante
ORDER BY DBName
       , index_advantage DESC
OPTION ( RECOMPILE );
