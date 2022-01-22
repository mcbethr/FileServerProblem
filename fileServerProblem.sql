CREATE TABLE FileVersions (
    ID int IDENTITY(1,1) PRIMARY KEY,
    VersionNumber int NOT NULL,
	DownloadFilename Varchar(255),
);

INSERT INTO FileVersions (VersionNumber, DownloadFilename) VALUES 
(1,'File1');
INSERT INTO FileVersions (VersionNumber, DownloadFilename) VALUES 
(1,'File2');
INSERT INTO FileVersions (VersionNumber, DownloadFilename) VALUES 
(1,'File3');
INSERT INTO FileVersions (VersionNumber, DownloadFilename) VALUES 
(2,'File1');



/*
#This query should give you what you want
#Just change the CustomerVersionNumber to the version you need it to be.

Declare @CustomerVersionNumber as Integer = 0

Select ID, VersionNumber, DownloadFilename from FileVersions 
where ID IN
(select MAX(ID) as ID 
from FileVersions
Group By DownloadFileName
) 
AND VersionNumber > @CustomerVersionNumber
*/