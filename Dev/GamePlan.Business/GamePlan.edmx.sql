
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 03/13/2014 06:46:28
-- Generated from EDMX file: D:\Projects\Tuan TA\PC Game Plan\GamePlan\Business\GamePlan.Business\GamePlan.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PCMobileGameplan];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_GenFeed_Language]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC_MobileGeneralFeedback] DROP CONSTRAINT [FK_GenFeed_Language];
GO
IF OBJECT_ID(N'[dbo].[FK_Listner_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC_MobileListener] DROP CONSTRAINT [FK_Listner_User];
GO
IF OBJECT_ID(N'[dbo].[FK_PrdFeedback_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC_MobileProductFeedback] DROP CONSTRAINT [FK_PrdFeedback_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_ProdFeedback_Language]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC_MobileProductFeedback] DROP CONSTRAINT [FK_ProdFeedback_Language];
GO
IF OBJECT_ID(N'[dbo].[FK_Product_Company_Relation_tblProduct_Feedback]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC_MobileProductCompany] DROP CONSTRAINT [FK_Product_Company_Relation_tblProduct_Feedback];
GO
IF OBJECT_ID(N'[dbo].[FK_Product_User_Relation_tblProduct_Feedback]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC_MobileProductUser] DROP CONSTRAINT [FK_Product_User_Relation_tblProduct_Feedback];
GO
IF OBJECT_ID(N'[dbo].[FK_Product_User_Relation_tblUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC_MobileProductUser] DROP CONSTRAINT [FK_Product_User_Relation_tblUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_Survey_Userdetails_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC_MobileListener] DROP CONSTRAINT [FK_Survey_Userdetails_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_User_Country]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC_MobileUser] DROP CONSTRAINT [FK_User_Country];
GO
IF OBJECT_ID(N'[dbo].[FK_user_Language]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PC_MobileUser] DROP CONSTRAINT [FK_user_Language];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[core].[glb_Company]', 'U') IS NOT NULL
    DROP TABLE [core].[glb_Company];
GO
IF OBJECT_ID(N'[core].[glb_Company1]', 'U') IS NOT NULL
    DROP TABLE [core].[glb_Company1];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileAdmin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileAdmin];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileCompany1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileCompany1];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileCountry]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileCountry];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileFeedbackRange]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileFeedbackRange];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileGeneralFeedback]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileGeneralFeedback];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileLanguage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileLanguage];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileListener]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileListener];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileProduct]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileProduct];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileProductCompany]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileProductCompany];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileProductFeedback]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileProductFeedback];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileProductUser]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileProductUser];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileQuestion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileQuestion];
GO
IF OBJECT_ID(N'[dbo].[PC_MobileUser]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PC_MobileUser];
GO
IF OBJECT_ID(N'[GamePlanBusinessStoreContainer].[PC_MobileCompany]', 'U') IS NOT NULL
    DROP TABLE [GamePlanBusinessStoreContainer].[PC_MobileCompany];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'glb_Company'
CREATE TABLE [dbo].[glb_Company] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [PartnerID] int  NOT NULL,
    [IndustryID] int  NOT NULL,
    [CountryID] int  NOT NULL,
    [ModuleID] int  NOT NULL,
    [Name] nvarchar(128)  NOT NULL,
    [Address] nvarchar(256)  NOT NULL,
    [State] nvarchar(32)  NULL,
    [City] nvarchar(128)  NULL,
    [Zip] nvarchar(32)  NOT NULL,
    [ContactName] nvarchar(128)  NULL,
    [PhoneNumber] nvarchar(16)  NULL,
    [FaxNumber] nvarchar(16)  NULL,
    [EmailAddress] nvarchar(256)  NULL,
    [CreatedDateTime] datetime  NULL,
    [LastModifiedDateTime] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL,
    [CompanySizeID] int  NULL,
    [CompanyPrimaryCntID] int  NULL,
    [OLDID] int  NULL
);
GO

-- Creating table 'glb_Company1'
CREATE TABLE [dbo].[glb_Company1] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [PartnerID] int  NOT NULL,
    [IndustryID] int  NOT NULL,
    [CountryID] int  NOT NULL,
    [ModuleID] int  NOT NULL,
    [Name] nvarchar(128)  NOT NULL,
    [Address] nvarchar(256)  NOT NULL,
    [State] nvarchar(32)  NULL,
    [City] nvarchar(128)  NULL,
    [Zip] nvarchar(32)  NOT NULL,
    [ContactName] nvarchar(128)  NULL,
    [PhoneNumber] nvarchar(16)  NULL,
    [FaxNumber] nvarchar(16)  NULL,
    [EmailAddress] nvarchar(256)  NULL,
    [CreatedDateTime] datetime  NULL,
    [LastModifiedDateTime] datetime  NULL,
    [RowVersion] binary(8)  NOT NULL,
    [CompanySizeID] int  NULL,
    [CompanyPrimaryCntID] int  NULL,
    [OLDID] int  NULL
);
GO

-- Creating table 'PC_MobileAdmin'
CREATE TABLE [dbo].[PC_MobileAdmin] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [UserID] varchar(50)  NOT NULL,
    [Password] varchar(50)  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [IsSuperAdmin] bit  NOT NULL
);
GO

-- Creating table 'PC_MobileCompany1'
CREATE TABLE [dbo].[PC_MobileCompany1] (
    [CompanyID] int IDENTITY(1,1) NOT NULL,
    [CompanyName] varchar(100)  NOT NULL
);
GO

-- Creating table 'PC_MobileCountry'
CREATE TABLE [dbo].[PC_MobileCountry] (
    [CountryID] int IDENTITY(1,1) NOT NULL,
    [CountryCode] char(3)  NULL,
    [CountryName] varchar(50)  NULL
);
GO

-- Creating table 'PC_MobileFeedbackRange'
CREATE TABLE [dbo].[PC_MobileFeedbackRange] (
    [RangeID] int IDENTITY(1,1) NOT NULL,
    [MinValue] tinyint  NOT NULL,
    [MAxValue] tinyint  NOT NULL
);
GO

-- Creating table 'PC_MobileGeneralFeedback'
CREATE TABLE [dbo].[PC_MobileGeneralFeedback] (
    [GeneralFeedID] int IDENTITY(1,1) NOT NULL,
    [MatrixValue] tinyint  NOT NULL,
    [LanguageID] int  NOT NULL,
    [GeneralFeedback] varchar(max)  NOT NULL
);
GO

-- Creating table 'PC_MobileLanguage'
CREATE TABLE [dbo].[PC_MobileLanguage] (
    [LanguageID] int IDENTITY(1,1) NOT NULL,
    [LanguageName] varchar(50)  NOT NULL,
    [LocalizationName] nvarchar(50)  NULL
);
GO

-- Creating table 'PC_MobileListener'
CREATE TABLE [dbo].[PC_MobileListener] (
    [SurveyUserID] int IDENTITY(1,1) NOT NULL,
    [FirstName] varchar(50)  NOT NULL,
    [LastName] varchar(50)  NOT NULL,
    [ProductID] int  NULL,
    [Gender] char(6)  NOT NULL,
    [Age] tinyint  NULL,
    [Email] varchar(50)  NULL,
    [Phone] varchar(12)  NULL,
    [SurveyDate] datetime  NULL,
    [Address] varchar(250)  NULL,
    [Comments] varchar(250)  NULL,
    [RegID] int  NULL
);
GO

-- Creating table 'PC_MobileProduct'
CREATE TABLE [dbo].[PC_MobileProduct] (
    [ProductID] int IDENTITY(1,1) NOT NULL,
    [ProductName] varchar(100)  NOT NULL,
    [CompanyID] int  NOT NULL
);
GO

-- Creating table 'PC_MobileProductCompany'
CREATE TABLE [dbo].[PC_MobileProductCompany] (
    [ProductCompID] int IDENTITY(1,1) NOT NULL,
    [ProductID] int  NOT NULL,
    [CompanyID] int  NOT NULL
);
GO

-- Creating table 'PC_MobileProductFeedback'
CREATE TABLE [dbo].[PC_MobileProductFeedback] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ProductID] int  NOT NULL,
    [Feedback] varchar(max)  NOT NULL,
    [MatrixPosition] char(2)  NOT NULL,
    [LanguageID] int  NOT NULL
);
GO

-- Creating table 'PC_MobileProductUser'
CREATE TABLE [dbo].[PC_MobileProductUser] (
    [ProductUserID] int IDENTITY(1,1) NOT NULL,
    [ProductID] int  NOT NULL,
    [RegID] int  NOT NULL
);
GO

-- Creating table 'PC_MobileQuestion'
CREATE TABLE [dbo].[PC_MobileQuestion] (
    [QuesID] int IDENTITY(1,1) NOT NULL,
    [QuesText1] varchar(250)  NOT NULL,
    [QuesText2] varchar(250)  NOT NULL,
    [QuesType] tinyint  NOT NULL,
    [LanguageID] int  NOT NULL,
    [QuestionNumber] int  NULL
);
GO

-- Creating table 'PC_MobileUser'
CREATE TABLE [dbo].[PC_MobileUser] (
    [RegID] int IDENTITY(1,1) NOT NULL,
    [UserID] varchar(50)  NOT NULL,
    [FirstName] varchar(50)  NULL,
    [LastName] varchar(50)  NULL,
    [Password] varchar(20)  NOT NULL,
    [CountryID] int  NOT NULL,
    [CompanyID] int  NULL,
    [LanguageID] int  NULL,
    [Emotional] float  NULL,
    [Dominance] float  NULL,
    [Gender] varchar(50)  NOT NULL,
    [IsEnabled] bit  NOT NULL,
    [IsDeleted] bit  NOT NULL,
    [AccountExpDate] datetime  NULL,
    [AccountInitDate] datetime  NULL,
    [CreatedDate] datetime  NOT NULL
);
GO

-- Creating table 'PC_MobileCompany'
CREATE TABLE [dbo].[PC_MobileCompany] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(128)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'glb_Company'
ALTER TABLE [dbo].[glb_Company]
ADD CONSTRAINT [PK_glb_Company]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'glb_Company1'
ALTER TABLE [dbo].[glb_Company1]
ADD CONSTRAINT [PK_glb_Company1]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'PC_MobileAdmin'
ALTER TABLE [dbo].[PC_MobileAdmin]
ADD CONSTRAINT [PK_PC_MobileAdmin]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [CompanyID] in table 'PC_MobileCompany1'
ALTER TABLE [dbo].[PC_MobileCompany1]
ADD CONSTRAINT [PK_PC_MobileCompany1]
    PRIMARY KEY CLUSTERED ([CompanyID] ASC);
GO

-- Creating primary key on [CountryID] in table 'PC_MobileCountry'
ALTER TABLE [dbo].[PC_MobileCountry]
ADD CONSTRAINT [PK_PC_MobileCountry]
    PRIMARY KEY CLUSTERED ([CountryID] ASC);
GO

-- Creating primary key on [RangeID] in table 'PC_MobileFeedbackRange'
ALTER TABLE [dbo].[PC_MobileFeedbackRange]
ADD CONSTRAINT [PK_PC_MobileFeedbackRange]
    PRIMARY KEY CLUSTERED ([RangeID] ASC);
GO

-- Creating primary key on [GeneralFeedID] in table 'PC_MobileGeneralFeedback'
ALTER TABLE [dbo].[PC_MobileGeneralFeedback]
ADD CONSTRAINT [PK_PC_MobileGeneralFeedback]
    PRIMARY KEY CLUSTERED ([GeneralFeedID] ASC);
GO

-- Creating primary key on [LanguageID] in table 'PC_MobileLanguage'
ALTER TABLE [dbo].[PC_MobileLanguage]
ADD CONSTRAINT [PK_PC_MobileLanguage]
    PRIMARY KEY CLUSTERED ([LanguageID] ASC);
GO

-- Creating primary key on [SurveyUserID] in table 'PC_MobileListener'
ALTER TABLE [dbo].[PC_MobileListener]
ADD CONSTRAINT [PK_PC_MobileListener]
    PRIMARY KEY CLUSTERED ([SurveyUserID] ASC);
GO

-- Creating primary key on [ProductID] in table 'PC_MobileProduct'
ALTER TABLE [dbo].[PC_MobileProduct]
ADD CONSTRAINT [PK_PC_MobileProduct]
    PRIMARY KEY CLUSTERED ([ProductID] ASC);
GO

-- Creating primary key on [ProductCompID] in table 'PC_MobileProductCompany'
ALTER TABLE [dbo].[PC_MobileProductCompany]
ADD CONSTRAINT [PK_PC_MobileProductCompany]
    PRIMARY KEY CLUSTERED ([ProductCompID] ASC);
GO

-- Creating primary key on [ID] in table 'PC_MobileProductFeedback'
ALTER TABLE [dbo].[PC_MobileProductFeedback]
ADD CONSTRAINT [PK_PC_MobileProductFeedback]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ProductUserID] in table 'PC_MobileProductUser'
ALTER TABLE [dbo].[PC_MobileProductUser]
ADD CONSTRAINT [PK_PC_MobileProductUser]
    PRIMARY KEY CLUSTERED ([ProductUserID] ASC);
GO

-- Creating primary key on [QuesID] in table 'PC_MobileQuestion'
ALTER TABLE [dbo].[PC_MobileQuestion]
ADD CONSTRAINT [PK_PC_MobileQuestion]
    PRIMARY KEY CLUSTERED ([QuesID] ASC);
GO

-- Creating primary key on [RegID] in table 'PC_MobileUser'
ALTER TABLE [dbo].[PC_MobileUser]
ADD CONSTRAINT [PK_PC_MobileUser]
    PRIMARY KEY CLUSTERED ([RegID] ASC);
GO

-- Creating primary key on [ID], [Name] in table 'PC_MobileCompany'
ALTER TABLE [dbo].[PC_MobileCompany]
ADD CONSTRAINT [PK_PC_MobileCompany]
    PRIMARY KEY CLUSTERED ([ID], [Name] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CountryID] in table 'PC_MobileUser'
ALTER TABLE [dbo].[PC_MobileUser]
ADD CONSTRAINT [FK_User_Country]
    FOREIGN KEY ([CountryID])
    REFERENCES [dbo].[PC_MobileCountry]
        ([CountryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_User_Country'
CREATE INDEX [IX_FK_User_Country]
ON [dbo].[PC_MobileUser]
    ([CountryID]);
GO

-- Creating foreign key on [LanguageID] in table 'PC_MobileGeneralFeedback'
ALTER TABLE [dbo].[PC_MobileGeneralFeedback]
ADD CONSTRAINT [FK_GenFeed_Language]
    FOREIGN KEY ([LanguageID])
    REFERENCES [dbo].[PC_MobileLanguage]
        ([LanguageID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GenFeed_Language'
CREATE INDEX [IX_FK_GenFeed_Language]
ON [dbo].[PC_MobileGeneralFeedback]
    ([LanguageID]);
GO

-- Creating foreign key on [LanguageID] in table 'PC_MobileProductFeedback'
ALTER TABLE [dbo].[PC_MobileProductFeedback]
ADD CONSTRAINT [FK_ProdFeedback_Language]
    FOREIGN KEY ([LanguageID])
    REFERENCES [dbo].[PC_MobileLanguage]
        ([LanguageID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProdFeedback_Language'
CREATE INDEX [IX_FK_ProdFeedback_Language]
ON [dbo].[PC_MobileProductFeedback]
    ([LanguageID]);
GO

-- Creating foreign key on [LanguageID] in table 'PC_MobileUser'
ALTER TABLE [dbo].[PC_MobileUser]
ADD CONSTRAINT [FK_user_Language]
    FOREIGN KEY ([LanguageID])
    REFERENCES [dbo].[PC_MobileLanguage]
        ([LanguageID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_user_Language'
CREATE INDEX [IX_FK_user_Language]
ON [dbo].[PC_MobileUser]
    ([LanguageID]);
GO

-- Creating foreign key on [RegID] in table 'PC_MobileListener'
ALTER TABLE [dbo].[PC_MobileListener]
ADD CONSTRAINT [FK_Listner_User]
    FOREIGN KEY ([RegID])
    REFERENCES [dbo].[PC_MobileUser]
        ([RegID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Listner_User'
CREATE INDEX [IX_FK_Listner_User]
ON [dbo].[PC_MobileListener]
    ([RegID]);
GO

-- Creating foreign key on [ProductID] in table 'PC_MobileListener'
ALTER TABLE [dbo].[PC_MobileListener]
ADD CONSTRAINT [FK_Survey_Userdetails_Product]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[PC_MobileProduct]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Survey_Userdetails_Product'
CREATE INDEX [IX_FK_Survey_Userdetails_Product]
ON [dbo].[PC_MobileListener]
    ([ProductID]);
GO

-- Creating foreign key on [ProductID] in table 'PC_MobileProductFeedback'
ALTER TABLE [dbo].[PC_MobileProductFeedback]
ADD CONSTRAINT [FK_PrdFeedback_Product]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[PC_MobileProduct]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PrdFeedback_Product'
CREATE INDEX [IX_FK_PrdFeedback_Product]
ON [dbo].[PC_MobileProductFeedback]
    ([ProductID]);
GO

-- Creating foreign key on [ProductID] in table 'PC_MobileProductCompany'
ALTER TABLE [dbo].[PC_MobileProductCompany]
ADD CONSTRAINT [FK_Product_Company_Relation_tblProduct_Feedback]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[PC_MobileProduct]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_Company_Relation_tblProduct_Feedback'
CREATE INDEX [IX_FK_Product_Company_Relation_tblProduct_Feedback]
ON [dbo].[PC_MobileProductCompany]
    ([ProductID]);
GO

-- Creating foreign key on [ProductID] in table 'PC_MobileProductUser'
ALTER TABLE [dbo].[PC_MobileProductUser]
ADD CONSTRAINT [FK_Product_User_Relation_tblProduct_Feedback]
    FOREIGN KEY ([ProductID])
    REFERENCES [dbo].[PC_MobileProduct]
        ([ProductID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_User_Relation_tblProduct_Feedback'
CREATE INDEX [IX_FK_Product_User_Relation_tblProduct_Feedback]
ON [dbo].[PC_MobileProductUser]
    ([ProductID]);
GO

-- Creating foreign key on [RegID] in table 'PC_MobileProductUser'
ALTER TABLE [dbo].[PC_MobileProductUser]
ADD CONSTRAINT [FK_Product_User_Relation_tblUsers]
    FOREIGN KEY ([RegID])
    REFERENCES [dbo].[PC_MobileUser]
        ([RegID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_User_Relation_tblUsers'
CREATE INDEX [IX_FK_Product_User_Relation_tblUsers]
ON [dbo].[PC_MobileProductUser]
    ([RegID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------