﻿/*
Deployment script for BancoDados2

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "BancoDados2"
:setvar DefaultFilePrefix "BancoDados2"
:setvar DefaultDataPath "C:\Users\Thiago\AppData\Local\Microsoft\VisualStudio\SSDT\BancoDados2"
:setvar DefaultLogPath "C:\Users\Thiago\AppData\Local\Microsoft\VisualStudio\SSDT\BancoDados2"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Creating [dbo].[FileTable1]...';


GO
CREATE TABLE [dbo].[FileTable1] AS FILETABLE
WITH (FILETABLE_DIRECTORY = N'C:\Users\Thiago\OneDrive\UEM\Banco de Dados 2\Madalena\Trabalho\PACIENTE.txt');


GO
PRINT N'Creating [DatabaseTrigger1]...';


GO
CREATE TRIGGER [DatabaseTrigger1]
ON DATABASE
FOR DDL_TABLE_VIEW_EVENTS
AS
BEGIN
	SET NOCOUNT ON
END
GO
PRINT N'Update complete.';


GO
