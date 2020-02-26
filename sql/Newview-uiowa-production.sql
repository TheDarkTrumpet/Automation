restore database [NewView-uiowa-production] from Disk = 'D:\data\Newview-uiowa-production.bak' with replace,
move 'Newview-uiowa-production_Data' TO 'C:\var\opt\mssql\data\Newview-uiowa-production.mdf',
move 'Newview-uiowa-production_Log' TO 'C:\var\opt\mssql\data\Newview-uiowa-production_log.ldf'
GO


-- restore FILELISTONLY FROM Disk = 'D:\data\Newview-uiowa-production.bak'