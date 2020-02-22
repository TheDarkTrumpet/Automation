restore database [Cardinal] from Disk = 'D:\data\Cardinal.bak' with replace,
move 'Cardinal' TO 'C:\var\opt\mssql\data\Cardinal.mdf',
move 'Cardinal_log' TO 'C:\var\opt\mssql\data\Cardinal_log.ldf'
GO


restore FILELISTONLY FROM Disk = 'D:\data\Cardinal.bak'