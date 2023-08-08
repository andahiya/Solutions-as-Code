CREATE DATABASE [db1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db1', FILENAME = N'C:\Data1\data1\DatabaseFiles\MSSQLSERVER\db1.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB ),
( NAME = N'db1_2', FILENAME = N'C:\Data2\data2\db1_2.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ),
( NAME = N'db1_3', FILENAME = N'C:\Data3\data3\db1_3.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ),
( NAME = N'db1_4', FILENAME = N'C:\Data4\data4\db1_4.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db1_log', FILENAME = N'C:\Data5\data5\DatabaseLogs\MSSQLSERVER\db1_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 WITH LEDGER = OFF
GO
ALTER DATABASE [db1] SET COMPATIBILITY_LEVEL = 160
GO
ALTER DATABASE [db1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db1] SET ARITHABORT OFF 
GO
ALTER DATABASE [db1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db1] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [db1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db1] SET  READ_WRITE 
GO
ALTER DATABASE [db1] SET RECOVERY FULL 
GO
ALTER DATABASE [db1] SET  MULTI_USER 
GO
ALTER DATABASE [db1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [db1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = On;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = Primary;
GO
USE [db1]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [db1] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO