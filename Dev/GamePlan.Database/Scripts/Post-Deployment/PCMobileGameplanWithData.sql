USE [PCMobileGameplan]
GO
/****** Object:  Table [dbo].[PC_MobileProduct]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC_MobileProduct](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[CompanyID] [int] NOT NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PC_MobileProduct] ON
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (1, N'Product A', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (2, N'Product B', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (3, N'Product C', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (5, N'HCL', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (7, N'New Product', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (8, N'dsfs', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (9, N'test comp', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (10, N'asdfgh', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (11, N'ertgrtgfdgfgfg', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (12, N'AnaTest', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (13, N'abc', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (14, N'Product A', 5)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (15, N'Test Product for PDG', 7)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (16, N'a123', 13)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (19, N'a235', 13)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (21, N'Canon Laser Copy', 1561)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (22, N'Test', 108)
INSERT [dbo].[PC_MobileProduct] ([ProductID], [ProductName], [CompanyID]) VALUES (23, N'ProductoToTest', 768)
SET IDENTITY_INSERT [dbo].[PC_MobileProduct] OFF
/****** Object:  Table [dbo].[PC_MobileLanguage]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC_MobileLanguage](
	[LanguageID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [varchar](50) NOT NULL,
	LocalizationName varchar(32) not null,
 CONSTRAINT [PK_PC_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PC_MobileLanguage] ON
INSERT [dbo].[PC_MobileLanguage] ([LanguageID], [LanguageName], LocalizationName) VALUES (1, N'English', 'en-US')
INSERT [dbo].[PC_MobileLanguage] ([LanguageID], [LanguageName], LocalizationName) VALUES (2, N'Arabic', 'en-US')
INSERT [dbo].[PC_MobileLanguage] ([LanguageID], [LanguageName], LocalizationName) VALUES (3, N'French', 'en-US')
INSERT [dbo].[PC_MobileLanguage] ([LanguageID], [LanguageName], LocalizationName) VALUES (4, N'German', 'en-US')
INSERT [dbo].[PC_MobileLanguage] ([LanguageID], [LanguageName], LocalizationName) VALUES (5, N'Hindi', 'en-US')
INSERT [dbo].[PC_MobileLanguage] ([LanguageID], [LanguageName], LocalizationName) VALUES (6, N'Russian', 'en-US')
SET IDENTITY_INSERT [dbo].[PC_MobileLanguage] OFF
/****** Object:  Table [dbo].[PC_MobileFeedbackRange]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PC_MobileFeedbackRange](
	[RangeID] [int] IDENTITY(1,1) NOT NULL,
	[MinValue] [tinyint] NOT NULL,
	[MAxValue] [tinyint] NOT NULL,
 CONSTRAINT [PK_PC_MobileFeedbackRange] PRIMARY KEY CLUSTERED 
(
	[RangeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PC_MobileFeedbackRange] ON
INSERT [dbo].[PC_MobileFeedbackRange] ([RangeID], [MinValue], [MAxValue]) VALUES (1, 0, 5)
INSERT [dbo].[PC_MobileFeedbackRange] ([RangeID], [MinValue], [MAxValue]) VALUES (2, 6, 10)
INSERT [dbo].[PC_MobileFeedbackRange] ([RangeID], [MinValue], [MAxValue]) VALUES (3, 11, 15)
INSERT [dbo].[PC_MobileFeedbackRange] ([RangeID], [MinValue], [MAxValue]) VALUES (4, 16, 20)
INSERT [dbo].[PC_MobileFeedbackRange] ([RangeID], [MinValue], [MAxValue]) VALUES (5, 21, 25)
INSERT [dbo].[PC_MobileFeedbackRange] ([RangeID], [MinValue], [MAxValue]) VALUES (6, 26, 30)
INSERT [dbo].[PC_MobileFeedbackRange] ([RangeID], [MinValue], [MAxValue]) VALUES (7, 31, 35)
INSERT [dbo].[PC_MobileFeedbackRange] ([RangeID], [MinValue], [MAxValue]) VALUES (8, 36, 40)
INSERT [dbo].[PC_MobileFeedbackRange] ([RangeID], [MinValue], [MAxValue]) VALUES (9, 41, 45)
INSERT [dbo].[PC_MobileFeedbackRange] ([RangeID], [MinValue], [MAxValue]) VALUES (10, 46, 50)
SET IDENTITY_INSERT [dbo].[PC_MobileFeedbackRange] OFF
/****** Object:  Table [dbo].[PC_MobileCountry]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC_MobileCountry](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryCode] [char](3) NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PC_MobileCountry] ON
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (1, N'US ', N'United States')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (2, N'CA ', N'Canada')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (3, N'AF ', N'Afghanistan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (4, N'AL ', N'Albania')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (5, N'DZ ', N'Algeria')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (6, N'DS ', N'American Samoa')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (7, N'AD ', N'Andorra')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (8, N'AO ', N'Angola')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (9, N'AI ', N'Anguilla')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (10, N'AQ ', N'Antarctica')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (11, N'AG ', N'Antigua and Barbuda')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (12, N'AR ', N'Argentina')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (13, N'AM ', N'Armenia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (14, N'AW ', N'Aruba')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (15, N'AU ', N'Australia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (16, N'AT ', N'Austria')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (17, N'AZ ', N'Azerbaijan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (18, N'BS ', N'Bahamas')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (19, N'BH ', N'Bahrain')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (20, N'BD ', N'Bangladesh')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (21, N'BB ', N'Barbados')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (22, N'BY ', N'Belarus')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (23, N'BE ', N'Belgium')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (24, N'BZ ', N'Belize')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (25, N'BJ ', N'Benin')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (26, N'BM ', N'Bermuda')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (27, N'BT ', N'Bhutan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (28, N'BO ', N'Bolivia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (29, N'BA ', N'Bosnia and Herzegovina')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (30, N'BW ', N'Botswana')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (31, N'BV ', N'Bouvet Island')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (32, N'BR ', N'Brazil')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (33, N'IO ', N'British lndian Ocean Territory')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (34, N'BN ', N'Brunei Darussalam')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (35, N'BG ', N'Bulgaria')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (36, N'BF ', N'Burkina Faso')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (37, N'BI ', N'Burundi')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (38, N'KH ', N'Cambodia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (39, N'CM ', N'Cameroon')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (40, N'CV ', N'Cape Verde')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (41, N'KY ', N'Cayman Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (42, N'CF ', N'Central African Republic')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (43, N'TD ', N'Chad')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (44, N'CL ', N'Chile')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (45, N'CN ', N'China')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (46, N'CX ', N'Christmas Island')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (47, N'CC ', N'Cocos (Keeling) Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (48, N'CO ', N'Colombia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (49, N'KM ', N'Comoros')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (50, N'CG ', N'Congo')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (51, N'CK ', N'Cook Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (52, N'CR ', N'Costa Rica')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (53, N'HR ', N'Croatia (Hrvatska)')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (54, N'CU ', N'Cuba')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (55, N'CY ', N'Cyprus')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (56, N'CZ ', N'Czech Republic')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (57, N'DK ', N'Denmark')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (58, N'DJ ', N'Djibouti')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (59, N'DM ', N'Dominica')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (60, N'DO ', N'Dominican Republic')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (61, N'TP ', N'East Timor')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (62, N'EC ', N'Ecudaor')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (63, N'EG ', N'Egypt')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (64, N'SV ', N'El Salvador')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (65, N'GQ ', N'Equatorial Guinea')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (66, N'ER ', N'Eritrea')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (67, N'EE ', N'Estonia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (68, N'ET ', N'Ethiopia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (69, N'FK ', N'Falkland Islands (Malvinas)')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (70, N'FO ', N'Faroe Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (71, N'FJ ', N'Fiji')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (72, N'FI ', N'Finland')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (73, N'FR ', N'France')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (74, N'FX ', N'France, Metropolitan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (75, N'GF ', N'French Guiana')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (76, N'PF ', N'French Polynesia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (77, N'TF ', N'French Southern Territories')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (78, N'GA ', N'Gabon')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (79, N'GM ', N'Gambia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (80, N'GE ', N'Georgia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (81, N'DE ', N'Germany')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (82, N'GH ', N'Ghana')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (83, N'GI ', N'Gibraltar')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (84, N'GR ', N'Greece')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (85, N'GL ', N'Greenland')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (86, N'GD ', N'Grenada')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (87, N'GP ', N'Guadeloupe')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (88, N'GU ', N'Guam')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (89, N'GT ', N'Guatemala')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (90, N'GN ', N'Guinea')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (91, N'GW ', N'Guinea-Bissau')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (92, N'GY ', N'Guyana')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (93, N'HT ', N'Haiti')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (94, N'HM ', N'Heard and Mc Donald Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (95, N'HN ', N'Honduras')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (96, N'HK ', N'Hong Kong')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (97, N'HU ', N'Hungary')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (98, N'IS ', N'Iceland')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (99, N'IN ', N'India')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (100, N'ID ', N'Indonesia')
GO
print 'Processed 100 total records'
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (101, N'IR ', N'Iran (Islamic Republic of)')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (102, N'IQ ', N'Iraq')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (103, N'IE ', N'Ireland')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (104, N'IL ', N'Israel')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (105, N'IT ', N'Italy')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (106, N'CI ', N'Ivory Coast')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (107, N'JM ', N'Jamaica')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (108, N'JP ', N'Japan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (109, N'JO ', N'Jordan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (110, N'KZ ', N'Kazakhstan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (111, N'KE ', N'Kenya')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (112, N'KI ', N'Kiribati')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (113, N'KP ', N'Korea, Democratic People''s Republic of')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (114, N'KR ', N'Korea, Republic of')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (115, N'KW ', N'Kuwait')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (116, N'KG ', N'Kyrgyzstan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (117, N'LA ', N'Lao People''s Democratic Republic')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (118, N'LV ', N'Latvia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (119, N'LB ', N'Lebanon')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (120, N'LS ', N'Lesotho')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (121, N'LR ', N'Liberia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (122, N'LY ', N'Libyan Arab Jamahiriya')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (123, N'LI ', N'Liechtenstein')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (124, N'LT ', N'Lithuania')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (125, N'LU ', N'Luxembourg')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (126, N'MO ', N'Macau')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (127, N'MK ', N'Macedonia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (128, N'MG ', N'Madagascar')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (129, N'MW ', N'Malawi')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (130, N'MY ', N'Malaysia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (131, N'MV ', N'Maldives')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (132, N'ML ', N'Mali')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (133, N'MT ', N'Malta')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (134, N'MH ', N'Marshall Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (135, N'MQ ', N'Martinique')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (136, N'MR ', N'Mauritania')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (137, N'MU ', N'Mauritius')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (138, N'TY ', N'Mayotte')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (139, N'MX ', N'Mexico')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (140, N'FM ', N'Micronesia, Federated States of')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (141, N'MD ', N'Moldova, Republic of')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (142, N'MC ', N'Monaco')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (143, N'MN ', N'Mongolia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (144, N'MS ', N'Montserrat')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (145, N'MA ', N'Morocco')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (146, N'MZ ', N'Mozambique')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (147, N'MM ', N'Myanmar')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (148, N'NA ', N'Namibia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (149, N'NR ', N'Nauru')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (150, N'NP ', N'Nepal')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (151, N'NL ', N'Netherlands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (152, N'AN ', N'Netherlands Antilles')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (153, N'NC ', N'New Caledonia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (154, N'NZ ', N'New Zealand')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (155, N'NI ', N'Nicaragua')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (156, N'NE ', N'Niger')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (157, N'NG ', N'Nigeria')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (158, N'NU ', N'Niue')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (159, N'NF ', N'Norfork Island')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (160, N'MP ', N'Northern Mariana Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (161, N'NO ', N'Norway')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (162, N'OM ', N'Oman')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (163, N'PK ', N'Pakistan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (164, N'PW ', N'Palau')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (165, N'PA ', N'Panama')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (166, N'PG ', N'Papua New Guinea')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (167, N'PY ', N'Paraguay')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (168, N'PE ', N'Peru')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (169, N'PH ', N'Philippines')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (170, N'PN ', N'Pitcairn')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (171, N'PL ', N'Poland')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (172, N'PT ', N'Portugal')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (173, N'PR ', N'Puerto Rico')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (174, N'QA ', N'Qatar')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (175, N'RE ', N'Reunion')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (176, N'RO ', N'Romania')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (177, N'RU ', N'Russian Federation')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (178, N'RW ', N'Rwanda')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (179, N'KN ', N'Saint Kitts and Nevis')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (180, N'LC ', N'Saint Lucia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (181, N'VC ', N'Saint Vincent and the Grenadines')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (182, N'WS ', N'Samoa')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (183, N'SM ', N'San Marino')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (184, N'ST ', N'Sao Tome and Principe')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (185, N'SA ', N'Saudi Arabia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (186, N'SN ', N'Senegal')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (187, N'SC ', N'Seychelles')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (188, N'SL ', N'Sierra Leone')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (189, N'SG ', N'Singapore')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (190, N'SK ', N'Slovakia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (191, N'SI ', N'Slovenia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (192, N'SB ', N'Solomon Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (193, N'SO ', N'Somalia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (194, N'ZA ', N'South Africa')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (195, N'GS ', N'South Georgia South Sandwich Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (196, N'ES ', N'Spain')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (197, N'LK ', N'Sri Lanka')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (198, N'SH ', N'St. Helena')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (199, N'PM ', N'St. Pierre and Miquelon')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (200, N'SD ', N'Sudan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (201, N'SR ', N'Suriname')
GO
print 'Processed 200 total records'
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (202, N'SJ ', N'Svalbarn and Jan Mayen Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (203, N'SZ ', N'Swaziland')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (204, N'SE ', N'Sweden')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (205, N'CH ', N'Switzerland')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (206, N'SY ', N'Syrian Arab Republic')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (207, N'TW ', N'Taiwan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (208, N'TJ ', N'Tajikistan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (209, N'TZ ', N'Tanzania, United Republic of')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (210, N'TH ', N'Thailand')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (211, N'TG ', N'Togo')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (212, N'TK ', N'Tokelau')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (213, N'TO ', N'Tonga')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (214, N'TT ', N'Trinidad and Tobago')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (215, N'TN ', N'Tunisia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (216, N'TR ', N'Turkey')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (217, N'TM ', N'Turkmenistan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (218, N'TC ', N'Turks and Caicos Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (219, N'TV ', N'Tuvalu')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (220, N'UG ', N'Uganda')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (221, N'UA ', N'Ukraine')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (222, N'AE ', N'United Arab Emirates')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (223, N'GB ', N'United Kingdom')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (224, N'UM ', N'United States minor outlying islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (225, N'UY ', N'Uruguay')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (226, N'UZ ', N'Uzbekistan')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (227, N'VU ', N'Vanuatu')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (228, N'VA ', N'Vatican City State')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (229, N'VE ', N'Venezuela')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (230, N'VN ', N'Vietnam')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (231, N'VG ', N'Virigan Islands (British)')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (232, N'VI ', N'Virgin Islands (U.S.)')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (233, N'WF ', N'Wallis and Futuna Islands')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (234, N'EH ', N'Western Sahara')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (235, N'YE ', N'Yemen')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (236, N'YU ', N'Yugoslavia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (237, N'ZR ', N'Zaire')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (238, N'ZM ', N'Zambia')
INSERT [dbo].[PC_MobileCountry] ([CountryID], [CountryCode], [CountryName]) VALUES (239, N'ZW ', N'Zimbabwe')
SET IDENTITY_INSERT [dbo].[PC_MobileCountry] OFF
/****** Object:  Table [dbo].[PC_MobileCompany1]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC_MobileCompany1](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblCompany] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PC_MobileCompany1] ON
INSERT [dbo].[PC_MobileCompany1] ([CompanyID], [CompanyName]) VALUES (2, N'Assign Infotech h')
INSERT [dbo].[PC_MobileCompany1] ([CompanyID], [CompanyName]) VALUES (3, N'Sepal')
INSERT [dbo].[PC_MobileCompany1] ([CompanyID], [CompanyName]) VALUES (5, N'Test Company10')
INSERT [dbo].[PC_MobileCompany1] ([CompanyID], [CompanyName]) VALUES (6, N'ABC')
INSERT [dbo].[PC_MobileCompany1] ([CompanyID], [CompanyName]) VALUES (7, N'Canon')
INSERT [dbo].[PC_MobileCompany1] ([CompanyID], [CompanyName]) VALUES (8, N'Abbott Laboratories')
INSERT [dbo].[PC_MobileCompany1] ([CompanyID], [CompanyName]) VALUES (9, N'Persona Global, Inc.')
SET IDENTITY_INSERT [dbo].[PC_MobileCompany1] OFF
/****** Object:  Table [dbo].[PC_MobileQuestion]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC_MobileQuestion](
	[QuesID] [int] IDENTITY(1,1) NOT NULL,
	QuestionNumber int not null,
	[QuesText1] [nvarchar](250) NOT NULL,
	[QuesText2] [nvarchar](250) NOT NULL,
	[QuesType] [tinyint] NOT NULL,
	[LanguageID] [int] NOT NULL,
 CONSTRAINT [PK_PC_MobileQuestion] PRIMARY KEY CLUSTERED 
(
	[QuesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PC_MobileQuestion] ON
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (1, 1,  N'Leader', N'Follower', 1, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (2, 2,  N'Open', N'Closed', 2, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (3, 3,  N'Dominant', N'Submissive', 1, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (4, 4, N'Decisive', N'Indecisive', 1, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (5, 5, N'Directs', N'Complies', 1, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (6, 6, N'Influenced by heart', N'Influenced by head', 2, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (7, 7, N'Exciting', N'Bland', 2, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (8, 8, N'Fast-Moving', N'Slow-Moving', 1, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (9, 9, N'Interrupts', N'Goes Along', 1, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (10,10,  N'Tells', N'Asks', 1, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (11, 11, N'Talkative', N'Quiet', 1, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (12, 12, N'Spontaneous', N'Structured', 2, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (13, 13, N'Expressive', N'Stiff', 2, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (14, 14, N'Shows emotions', N'Conceals emotions', 2, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (15, 15, N'People oriented', N'Task oriented', 2, 1)
INSERT [dbo].[PC_MobileQuestion] ([QuesID], QuestionNumber, [QuesText1], [QuesText2], [QuesType], [LanguageID]) VALUES (16, 16, N'Lenient', N'Firm', 2, 1)
SET IDENTITY_INSERT [dbo].[PC_MobileQuestion] OFF
/****** Object:  Table [dbo].[PC_MobileAdmin]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC_MobileAdmin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[UserID] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsSuperAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_PC_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PC_MobileAdmin] ON
INSERT [dbo].[PC_MobileAdmin] ([ID], [Name], [UserID], [Password], [IsDeleted], [CreatedDate], [IsSuperAdmin]) VALUES (1, N'Quan Lieu', N'quan@personaglobal.com', N'Persona7@67', 0, CAST(0x00009F3400EFDA25 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[PC_MobileAdmin] OFF
/****** Object:  StoredProcedure [dbo].[prc_FeedbackRange_Update]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_FeedbackRange_Update]
@ID int,
@MinValue tinyint,
@MaxValue tinyint

as
begin
	update PC_MobileFeedbackRange set MinValue=@MinValue,MAxValue= @MaxValue
	where RangeID=@ID
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_FeedbackRange_SelectAll_DDL]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_FeedbackRange_SelectAll_DDL]


as
begin

	select RangeID,((convert(varchar,minvalue))+'-'+(convert(varchar,MAxValue))) as FeedbackRange from PC_MobileFeedbackRange
end
GO
/****** Object:  StoredProcedure [dbo].[prc_FeedbackRange_SelectAll]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_FeedbackRange_SelectAll]


as
begin

	select * from PC_MobileFeedbackRange
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Country_list]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Country_list] 
as
select CountryId, CountryName from PC_MobileCountry
GO
/****** Object:  StoredProcedure [dbo].[prc_Product_Update]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Product_Update]
@ProductID int,
@ProductName varchar(100)
as
begin
--	update PC_MobileProduct set ProductName=@ProductName,StandardFeedback=@Feedback
update PC_MobileProduct set ProductName=@ProductName
	where productid=@ProductID
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end


select * from PC_MobileProduct
GO
/****** Object:  StoredProcedure [dbo].[prc_Question_Update_ByID]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Question_Update_ByID]
@QuesID int,
@QuesText1 varchar(250),
@QuesText2 varchar(250)
as

begin
update PC_MobileQuestion set QuesText1=@QuesText1,QuesText2=@QuesText2
where QuesID=@QuesID
IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Question_SelectAll]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Question_SelectAll]


as

begin
select * from PC_MobileQuestion
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Product_Select_ByCompany]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Product_Select_ByCompany]
@CompanyID int

as
begin

	select ProductID,ProductName from PC_MobileProduct 
	where companyid=@CompanyID
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Product_Select_All_DDL]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Product_Select_All_DDL]


as
begin

	select ProductID,ProductName from PC_MobileProduct 
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Product_Select_All]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Product_Select_All]


as
begin

	select ProductID,ProductName from PC_MobileProduct 
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Product_INS]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Product_INS]
@ProductName varchar(100),
--@Feedback varchar(Max),
@CompanyID int
as
begin
--	insert into PC_MobileProduct values(@ProductName,@Feedback,@CompanyID)
insert into PC_MobileProduct(ProductName,CompanyID) values(@ProductName,@CompanyID)
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Product_Delete]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Product_Delete]
@ProductID int

as
begin
	delete from  PC_MobileProduct where ProductID=@ProductID
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Language_SelectAll]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Language_SelectAll]


as

begin
select * from PC_MobileLanguage
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Admin_Authenticate]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Admin_Authenticate]

@UserID varchar(50),
@Password varchar(20),
@AdminID int=0

as

--if Exists(select id from PC_Admin where USERID=@UserID and password=@Password and IsDeleted=0)
--	begin
		--select * from PC_MobileAdmin where USERID COLLATE Latin1_General_CS_AS=@UserID and password COLLATE Latin1_General_CS_AS=@Password and IsDeleted=0
		select * from PC_MobileAdmin where USERID =@UserID and password =@Password and IsDeleted=0
		--select @AdminID=id from PC_Admin where USERID=@UserID and password=@Password and IsDeleted=0
		--select @AdminID
--	end
--else
--	begin
--	select 0
--	end
GO
/****** Object:  Table [dbo].[PC_MobileUser]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC_MobileUser](
	[RegID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Password] [varchar](20) NOT NULL,
	[CountryID] [int] NOT NULL,
	[CompanyID] [int] NULL,
	[LanguageID] [int] NULL,
	[Emotional] [float] NULL,
	[Dominance] [float] NULL,
	[Gender] [varchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[AccountExpDate] [datetime] NULL,
	[AccountInitDate] [datetime] NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[RegID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PC_MobileUser] ON
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (23, N'rajesh@gmail.com', N'Rajesh', NULL, N'rajesh', 99, 5, 1, 2, 5, N'Male  ', 1, 0, NULL, NULL, CAST(0x00009F33011E18B6 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (24, N'op@gmail.com', N'op', NULL, N'op', 99, 5, NULL, NULL, 5, N'Male  ', 1, 1, NULL, NULL, CAST(0x00009F3400F360C9 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (25, N'abhinav.sehgal@mobileprogramming.com', N'abhinav', NULL, N'welcome', 1, 5, 1, 2, 5, N'Male  ', 1, 0, NULL, NULL, CAST(0x00009F340117051A AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (26, N'om.prakash@gmail.com', N'om', N'prakash', N'om', 99, 5, 5, 2, 5, N'Male  ', 1, 0, NULL, NULL, CAST(0x00009F3500BA7A5F AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (30, N'gemma@personaglobal.com', N'Gemma', N'G', N'welcome', 1, 5, 1, 2, 5, N'Female', 1, 0, NULL, NULL, CAST(0x00009F36011C6105 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (31, N'testt@gmail.com', N'testt', N'testt', N'testt', 1, 5, 1, 2, 5, N'Male  ', 1, 1, NULL, NULL, CAST(0x00009F3900E8E85D AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (32, N'aaaaaa@gmail.com', N'aaaaaaa', N'aaa', N'aa', 1, 5, 1, 2, 5, N'Male  ', 1, 1, CAST(0x00009F5000000000 AS DateTime), CAST(0x00009F3200000000 AS DateTime), CAST(0x00009F3D0106E974 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (33, N'tetst@gmail.com', N'tetst', N'tetst', N'tetst', 1, 5, 1, 2, 5, N'Male  ', 1, 1, CAST(0x00009F4B00000000 AS DateTime), CAST(0x00009F4700000000 AS DateTime), CAST(0x00009F410124E8EA AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (34, N'ana@mmm.com', N'Ana', N'Murphy', N'dgsdfgsd', 1, 5, 1, 2, 5, N'Female', 1, 0, CAST(0x00009F5A00000000 AS DateTime), CAST(0x00009F3A00000000 AS DateTime), CAST(0x00009F4300AE6A51 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (35, N'amy@personaglobal.com', N'amy', N'tsang', N'123', 1, 5, 1, 2, 5, N'Female', 1, 1, CAST(0x00009F3200000000 AS DateTime), CAST(0x00009F3200000000 AS DateTime), CAST(0x00009F4300B44D39 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (36, N'ana@mmmm.com', N'Ana', N'Murphy', N'fgd', 2, 5, 4, 2, 5, N'Female', 1, 1, CAST(0x00009F4B00000000 AS DateTime), CAST(0x00009F3300000000 AS DateTime), CAST(0x00009F4300B60A9C AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (37, N'a@a.com', N'Harry', N'A', N'a', 1, 6, 1, 2, 5, N'Male  ', 1, 0, CAST(0x00009F6C00000000 AS DateTime), CAST(0x00009F4300000000 AS DateTime), CAST(0x00009F4401331D11 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (38, N'abc@gmail.com', N'abc', N'abs', N'abc', 1, 6, 1, 2, 5, N'Male  ', 1, 0, CAST(0x00009F5000000000 AS DateTime), CAST(0x00009F4400000000 AS DateTime), CAST(0x00009F4401342C1A AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (39, N'ben@gmail.com', N'Ben', N'Shalom', N'ben', 1, 6, 1, 2, 5, N'Male  ', 1, 0, CAST(0x00009F5000000000 AS DateTime), CAST(0x00009F3200000000 AS DateTime), CAST(0x00009F440134E424 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (40, N'jon@personaglobal.com', N'Jon', N'Gornstein', N'Gameplan4u', 1, 5, 1, 2, 5, N'Male  ', 1, 1, CAST(0x00009F5000000000 AS DateTime), CAST(0x00009F4300000000 AS DateTime), CAST(0x00009F44014505B3 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (41, N'test@gmail.com', N'test', N'test', N'om', 2, 5, 1, 2, 5, N'Male  ', 1, 0, CAST(0x00009F4F00000000 AS DateTime), CAST(0x00009F4000000000 AS DateTime), CAST(0x00009F4A00D6B989 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (42, N'abhinav.sehgals@gmail.com', N'Abhi', N'Sehgal', N'welcome', 1, 7, 1, 2.3, 1.3, N'Male  ', 1, 0, CAST(0x00009F5F00000000 AS DateTime), CAST(0x00009F4A00000000 AS DateTime), CAST(0x00009F4C01265905 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (43, N'a@aaa.com', N'Abby ', N'Sehgal', N'aaa', 1, 7, 1, 3, 2, N'Male  ', 1, 0, CAST(0x00009F5E00000000 AS DateTime), CAST(0x00009F4A00000000 AS DateTime), CAST(0x00009F4F013AD72E AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (44, N'asehgal@iit.edu', N'abhinav', N'sehgal', N'welcome', 1, 6, 1, 3, 4, N'Male  ', 1, 0, CAST(0x00009FBA00000000 AS DateTime), CAST(0x00009F5100000000 AS DateTime), CAST(0x00009F640170BB37 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (45, N'test@pg.com', N'Test', N'123', N'test', 1, 6, 1, 2, 3, N'Male  ', 1, 0, CAST(0x00009F6E00000000 AS DateTime), CAST(0x00009F5100000000 AS DateTime), CAST(0x00009F67010F31C6 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (46, N'ben@b.com', N'ben', N'Shalom', N'ben', 1, 5, 1, 3, 4, N'Male  ', 1, 0, CAST(0x00009F8800000000 AS DateTime), CAST(0x00009F5100000000 AS DateTime), CAST(0x00009F670111C823 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (47, N'mkss30@gmail.com', N'mukesh', N'mukesh', N'ram', 1, 5, 1, 3, 3, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009F4E00000000 AS DateTime), CAST(0x00009F6A00EE746E AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (48, N'test100@gmail.com', N'Test100', N'100', N'test100', 1, 8, 1, 2, 2, N'Male  ', 1, 0, CAST(0x00009FB300000000 AS DateTime), CAST(0x00009F5800000000 AS DateTime), CAST(0x00009F6B00E6E380 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (49, N'ab@ab.com', N'Jon', N'G', N'ab', 1, 6, 1, 1, 3, N'Male  ', 1, 0, CAST(0x00009F7300000000 AS DateTime), CAST(0x00009F5100000000 AS DateTime), CAST(0x00009F6B00EF15EB AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (50, N'info@personaglobal.com', N'Jon', N'Gornstein', N'4styles', 1, 5, 1, 2, 4, N'Male  ', 1, 0, CAST(0x00009FC900000000 AS DateTime), CAST(0x00009F6B00000000 AS DateTime), CAST(0x00009F6B00EF9333 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (51, N'Quan@quan.com', N'Quan', N'Q', N'quan', 1, 5, 1, 1, 1, N'Female', 1, 0, CAST(0x00009F8800000000 AS DateTime), CAST(0x00009F6B00000000 AS DateTime), CAST(0x00009F6B00EFAFA1 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (52, N'qa@aol.com', N'qa', N'test', N'Amit', 99, 13, 1, 2, 3, N'Male  ', 1, 0, CAST(0x00009F7B00000000 AS DateTime), CAST(0x00009F6700000000 AS DateTime), CAST(0x00009F6C011B28A4 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (53, N're@gmail.com', N'11', N're', N'Ankit', 1, 5, 1, 1, 2, N'Male  ', 1, 1, CAST(0x00009F9800000000 AS DateTime), CAST(0x00009F7400000000 AS DateTime), CAST(0x00009F6C0121CF10 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (54, N'rr@gmail.com', N'rest', N'rr', N'abc', 2, 5, 1, 1, 2, N'Male  ', 1, 1, CAST(0x00009FAD00000000 AS DateTime), CAST(0x00009F7C00000000 AS DateTime), CAST(0x00009F6C012698A8 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (55, N'shane@shane.com', N'shane', N'shane', N'shane', 1, 13, 1, 4, 4, N'Male  ', 1, 0, CAST(0x00009F8D00000000 AS DateTime), CAST(0x00009F5F00000000 AS DateTime), CAST(0x00009F6C013E48E3 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (56, N'yy@gmail.com', N'xxx', N'yyy', N'test', 3, 5, 1, 2, 1, N'Male  ', 1, 0, CAST(0x00009F8300000000 AS DateTime), CAST(0x00009F6500000000 AS DateTime), CAST(0x00009F6D00BEDCC3 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (57, N'jon@pg.com', N'Jon', N'G', N'jon', 1, 5, 1, 4, 2, N'Male  ', 1, 0, CAST(0x00009FAB00000000 AS DateTime), CAST(0x00009F6F00000000 AS DateTime), CAST(0x00009F71011F4A51 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (58, N'Jon@pg.us', N'Jon', N'G', N'jon', 1, 5, 1, 4, 2, N'Male  ', 1, 0, CAST(0x00009FAB00000000 AS DateTime), CAST(0x00009F6F00000000 AS DateTime), CAST(0x00009F7101211CBE AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (59, N'amytest@personaglobal.com', N'amy', N'tsang', N'amy123', 1, 5, 1, 1, 1, N'Female', 1, 0, CAST(0x00009F7300000000 AS DateTime), CAST(0x00009F7200000000 AS DateTime), CAST(0x00009F72010B6490 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (60, N'amytest123@personaglobal.com', N'amy', N'tsang', N'amy123', 1, 5, 1, 1, 1, N'Female', 1, 0, CAST(0x00009F7300000000 AS DateTime), CAST(0x00009F7200000000 AS DateTime), CAST(0x00009F72010B8132 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (61, N'om@gmail.com', N'xd', N'sdsd', N'om', 17, 5, 1, 1, 11, N'Male  ', 1, 1, CAST(0x00009F8800000000 AS DateTime), CAST(0x00009F8500000000 AS DateTime), CAST(0x00009F7201120B40 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (62, N'om@gmail.com', N'xd', N'sdsd', N'om', 16, 5, 1, 10, 10, N'Male  ', 1, 0, CAST(0x00009F8800000000 AS DateTime), CAST(0x00009F8500000000 AS DateTime), CAST(0x00009F720113230B AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (63, N'om1@gmail.com', N'fh', N'fhhg', N'om', 11, 13, 1, 1, 10, N'Male  ', 1, 0, CAST(0x00009F8800000000 AS DateTime), CAST(0x00009F7800000000 AS DateTime), CAST(0x00009F7201260E56 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (64, N'om2@gmail.com', N'fhfh', N'fh', N'om', 17, 13, 1, 10, 10, N'Male  ', 1, 0, CAST(0x00009FA600000000 AS DateTime), CAST(0x00009F8E00000000 AS DateTime), CAST(0x00009F720127DCDD AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (65, N'ad@aol.com', N'admin', N'ts', N'123', 2, 5, 1, 2, 1, N'Male  ', 1, 1, CAST(0x00009F7D00000000 AS DateTime), CAST(0x00009F7300000000 AS DateTime), CAST(0x00009F7300F63C9A AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (66, N'qq@gmail.com', N'qq', N'rr', N'123', 1, 5, 1, 3, 4, N'Male  ', 1, 0, CAST(0x00009F8800000000 AS DateTime), CAST(0x00009F7D00000000 AS DateTime), CAST(0x00009F7300F70898 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (67, N'singhmukeshgbpec@gmail.com', N'mukesh', N'kumar', N'ram', 1, 5, 1, 2, 2, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009FA300000000 AS DateTime), CAST(0x00009F730106E89B AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (68, N'ad@aol.com', N'am', N'aa', N'a', 1, 5, 1, 2, 5, N'Male  ', 1, 0, CAST(0x00009F8A00000000 AS DateTime), CAST(0x00009F7200000000 AS DateTime), CAST(0x00009F73011A37B8 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (69, N'aaaaaa@gmail.com', N'rajesh', N'rai', N'aa', 14, 5, 1, 10, 11, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009F7500000000 AS DateTime), CAST(0x00009F75004613F7 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (70, N'mkss30@yahoo.co.in', N'ram', N'singh', N'ram', 1, 5, 1, 2, 3, N'Male  ', 1, 0, CAST(0x00009FAB00000000 AS DateTime), CAST(0x00009F6E00000000 AS DateTime), CAST(0x00009F75009E59FE AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (71, N'ankit12789@gmail.com', N'Ankit', N'Yadav', N'14076542', 1, 5, 1, 2, 2, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009F5100000000 AS DateTime), CAST(0x00009F7500CC7CE7 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (72, N'gaurav@gmail.com', N'Gaurav', N'Yadav', N'rajokri', 1, 5, 1, 2, 2, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009FAC00000000 AS DateTime), CAST(0x00009F7500CD2A3E AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (73, N'amit@gmail.com', N'amit', N'yadav', N'amit', 1, 5, 1, 2, 2, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009F5100000000 AS DateTime), CAST(0x00009F7500CEE0D4 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (74, N'arihant@gmail.com', N'arihant', N'jain', N'arihant', 1, 5, 1, 2, 2, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009FAC00000000 AS DateTime), CAST(0x00009F7500D01C45 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (75, N'mr.arihant@gmail.com', N'arihant', N'Yadav', N'arihant', 1, 5, 1, 2, 2, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009F6F00000000 AS DateTime), CAST(0x00009F7500D147C5 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (76, N'as@a.com', N'am', N'as', N'am', 2, 5, 1, 1, 4, N'Male  ', 1, 0, CAST(0x00009FC100000000 AS DateTime), CAST(0x00009F9D00000000 AS DateTime), CAST(0x00009F7500EDD431 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (77, N'99@99.com', N'test', N'tfgt', N'123', 15, 13, 1, 0, 3, N'Male  ', 1, 1, CAST(0x00009F7A00000000 AS DateTime), CAST(0x00009F7200000000 AS DateTime), CAST(0x00009F7A00C64828 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (78, N'quan@personaglobal.com', N'Quan', N'Lieu', N'4Styles', 1, 5, 1, 4, 4, N'Male  ', 1, 0, CAST(0x00009FD000000000 AS DateTime), CAST(0x00009F7A00000000 AS DateTime), CAST(0x00009F7A00DEF651 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (79, N'88@88.com', N'per', N'skl', N'amit', 2, 13, 1, 1, 3, N'Male  ', 1, 0, CAST(0x00009F7B00000000 AS DateTime), CAST(0x00009F7500000000 AS DateTime), CAST(0x00009F7A00E1737A AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (80, N'amytest1234@personaglobal.com', N'amy', N'tsang', N'amy123', 1, 5, 1, 4, 6, N'Female', 1, 0, CAST(0x00009F7000000000 AS DateTime), CAST(0x00009F6F00000000 AS DateTime), CAST(0x00009F7A00E88245 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (81, N'a@mmm.com', N'amy', N'tsang', N'a123', 1, 5, 1, 8, 9, N'Female', 1, 0, CAST(0x00009F6F00000000 AS DateTime), CAST(0x00009F6F00000000 AS DateTime), CAST(0x00009F7A00E93C22 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (82, N'aa@personaglobal.com', N'Amy', N'Tsang', N'a1234', 1, 5, 1, 4, 4, N'Female', 1, 0, CAST(0x00009F7100000000 AS DateTime), CAST(0x00009F6E00000000 AS DateTime), CAST(0x00009F7A00EAD0E6 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (83, N'aaa@mmm.com', N'amy', N'tsang', N'aaa123', 1, 5, 1, 6, 7, N'Female', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009F6F00000000 AS DateTime), CAST(0x00009F7A00EBAAF1 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (84, N'ana@personaglobal.com', N'Ana', N'Murphy', N'4Styles', 1, 5, 1, 23, 23, N'Male  ', 1, 0, CAST(0x00009F7500000000 AS DateTime), CAST(0x00009F7500000000 AS DateTime), CAST(0x00009F7A00ED93BA AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (85, N'ankit@gmail.com', N'ankit', N'yadav', N'ankit', 1, 5, 1, 1, 2, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009F7000000000 AS DateTime), CAST(0x00009F7C00BBB4DF AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (86, N'aqaq@gmail.com', N'aqaq', N'aqaq', N'aqaq', 16, 5, 1, NULL, NULL, N'Male  ', 1, 0, NULL, NULL, CAST(0x00009F83003BDFFC AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (87, N'sa@gmail.com', N'sa', N'sa', N'sa', 18, 5, 1, -1, -1, N'Male  ', 1, 0, NULL, NULL, CAST(0x00009F83003E1044 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (88, N's@gmail.com', N'sdlc', N'stlc', N'amit', 3, 5, 1, 3, 2, N'Male  ', 1, 0, CAST(0x00009FA400000000 AS DateTime), CAST(0x00009F8E00000000 AS DateTime), CAST(0x00009F8F0117F179 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (89, N'emily@personaglobal.com', N'Emily', N'K', N'4Styles', 1, 5, 1, -1, -1, N'Female', 1, 0, CAST(0x00009F9100000000 AS DateTime), CAST(0x00009F9000000000 AS DateTime), CAST(0x00009F90011A7A92 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (90, N'amit@aol.com', N'dfg', N'asd', N'123', 1, 5, 1, 1, -1, N'Male  ', 1, 0, CAST(0x00009FA600000000 AS DateTime), CAST(0x00009F8E00000000 AS DateTime), CAST(0x00009F90012CF1E5 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (91, N'amit@yahoo.com', N'amit', N'sh', N'123', 1, 5, 1, -1, -1, N'Male  ', 1, 0, CAST(0x00009FA500000000 AS DateTime), CAST(0x00009F8E00000000 AS DateTime), CAST(0x00009F90012ECBCB AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (92, N'amit@a.com', N'xx', N'yy', N'123', 2, 5, 1, 5, 0, N'Male  ', 1, 0, CAST(0x00009FA700000000 AS DateTime), CAST(0x00009F8F00000000 AS DateTime), CAST(0x00009F9500EA721D AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (93, N'abby@mp.com', N'Abby', N'Sehgal', N'abby', 1, 14, 1, 5, 2, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009F8E00000000 AS DateTime), CAST(0x00009F95012C9449 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (94, N'david@persona.com', N'David', N'Cook', N'styles', 1, 1561, 1, 4, 2, N'Male  ', 1, 0, CAST(0x0000A63200000000 AS DateTime), CAST(0x00009F9800000000 AS DateTime), CAST(0x00009F9801535D40 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (95, N'raone@a.com', N'Ra', N'One', N'test', 1, 10, 1, 3, 4, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009F8E00000000 AS DateTime), CAST(0x00009F9B0130C69B AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (96, N'r@r.r', N'r', N'r', N'r', 1, 6, 1, -1, -1, N'Male  ', 1, 0, CAST(0x00009FC800000000 AS DateTime), CAST(0x00009F8E00000000 AS DateTime), CAST(0x00009F9B01311E0B AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (97, N'mukesh_singh@a1technology.com', N'a', N'a', N'ram', 1, 5, 3, 3, 3, N'Male  ', 1, 0, CAST(0x00009FCA00000000 AS DateTime), CAST(0x00009F8E00000000 AS DateTime), CAST(0x00009F9C00B9CD21 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (98, N'anamurphy@yahoo.com', N'Ana', N'Murphy', N'persona2', 1, 1561, 1, 1, 2, N'Female', 1, 0, CAST(0x0000A12700000000 AS DateTime), CAST(0x00009FB800000000 AS DateTime), CAST(0x00009FB90125AE05 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (100, N'ben@mobileprogramming.com', N'Ben', N'Shalom', N'go', 1, 1561, 1, 3, 3, N'Male  ', 1, 0, CAST(0x0000A29600000000 AS DateTime), CAST(0x00009FBB00000000 AS DateTime), CAST(0x00009FBB01264B97 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (101, N'tester@apple.com', N'Apple', N'Tester', N'1234', 1, 1561, 1, 3, 3, N'Male  ', 1, 0, CAST(0x0000A00900000000 AS DateTime), CAST(0x00009FCE00000000 AS DateTime), CAST(0x00009FCE0131090C AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (106, N'Nada.Savatic@ABBOTT.COM', N'Nada', N'Savatic', N'Nada14', 185, 5604, 1, 4, 1, N'F', 1, 0, CAST(0x0000A2AE00000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), CAST(0x00009FD3011980F6 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (107, N'Katherine.Boldt@abbott.com', N'Katherine', N'Boldt', N'Katherine44', 185, 5604, 1, 4, 4, N'F', 1, 0, CAST(0x0000A2AE00000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), CAST(0x00009FD3011980F6 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (108, N'Suzette.Pelletier@abbott.com', N'Suzette', N'Pelletier', N'Suzette46', 185, 5604, 1, 6, 4, N'F', 1, 0, CAST(0x0000A2AE00000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), CAST(0x00009FD3011980F6 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (109, N'RUNDA.BADWAN@ABBOTT.COM', N'Runda', N'Badwan', N'Runda12', 185, 5604, 1, 2, 1, N'F', 1, 0, CAST(0x0000A2AE00000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), CAST(0x00009FD3011980F6 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (110, N'BARBARA.JAMES@ABBOTT.COM', N'Barbara', N'James', N'Barbara53', 185, 5604, 1, 3, 5, N'F', 1, 0, CAST(0x0000A2AE00000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), CAST(0x00009FD3011980F6 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (111, N'JAY.NEWMARK@ABBOTT.COM', N'Jay', N'Newmark', N'Jay21', 185, 5604, 1, 1, 2, N'M', 1, 0, CAST(0x0000A2AE00000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), CAST(0x00009FD3011980F6 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (112, N'lisa.wayne@abbott.com', N'Lisa', N'Wayne', N'', 185, 5604, 1, NULL, NULL, N'F', 1, 0, CAST(0x0000A2AE00000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), CAST(0x00009FD30119C8D2 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (113, N'michael.rockelmann@abbott.com', N'Michael', N'Rockelmann', N'Michael43', 185, 5604, 1, 3, 4, N'M', 1, 0, CAST(0x0000A2AE00000000 AS DateTime), CAST(0x00009FD300000000 AS DateTime), CAST(0x00009FD3011F5A30 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (114, N'jb.parat@openact.com', N'Jean-Benoit', N'Parat', N'Jean-Benoit54', 185, 5587, 1, 5, 4, N'M', 1, 0, CAST(0x0000A14500000000 AS DateTime), CAST(0x00009FD700000000 AS DateTime), CAST(0x00009FD700D66798 AS DateTime))
INSERT [dbo].[PC_MobileUser] ([RegID], [UserID], [FirstName], [LastName], [Password], [CountryID], [CompanyID], [LanguageID], [Emotional], [Dominance], [Gender], [IsEnabled], [IsDeleted], [AccountExpDate], [AccountInitDate], [CreatedDate]) VALUES (115, N'shartman@telus.net', N'Scott', N'Hartman', N'Scott41', 185, 5587, 1, 4, 1, N'M', 1, 0, CAST(0x0000A14A00000000 AS DateTime), CAST(0x00009FDC00000000 AS DateTime), CAST(0x00009FDC00DC15DF AS DateTime))
SET IDENTITY_INSERT [dbo].[PC_MobileUser] OFF
/****** Object:  Table [dbo].[PC_MobileProductFeedback]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC_MobileProductFeedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Feedback] [nvarchar](max) NOT NULL,
	[MatrixPosition] [char](2) NOT NULL,
	[LanguageID] [int] NOT NULL,
 CONSTRAINT [PK_PC_ProductFeedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PC_MobileProductFeedback] ON
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (15, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th  colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Leader & only company specializing in image processing technology.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Innovative technology ahead of competition due to advanced R&D efforts. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Laser technology brings you the newest features with best results. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Sales & service teams structure, allow for quick and easy support to you. </td></tr>


</tbody></table>', N'1 ', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (16, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Reputation for building long-term relationships &amp; keeping our customers.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Reliability minimizes disruptions that cause problems for your staff. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Our equipment is designed with the needs of users as a primary factor. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Servicing by our own Canon team ensures integrated long-term support. </td></tr></tbody></table>', N'2 ', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (17, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Reliability of our technology is recognized even by our competition.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>As we manufacture our own products, quality control is ensured. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Our patented UHQ technology produces consistent high quality print.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Canon''s advanced R&amp;D efforts result in proven &amp; tested equipment. </td></tr></tbody></table>', N'3 ', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (18, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Reliability of our technology reduces downtime &amp; minimizes costs.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Range of features allows you to make the most cost-effective choice. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Faster transmission time gives you higher efficiency &amp; reduced costs.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Canon''s own service team ensures fast &amp; effective after-sales support. </td></tr></tbody></table>', N'4 ', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (19, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Emphasize the lead in image processing tech. That produces new, effective features. Unique cartridge ensures few tech problems &amp; better productivity. Plain paper will meet future needs quickly, cheaply, &amp; conveniently. Our technology gives quality results even with high volume. Image &amp; financial benefits are combined with integrated service. Dual access operation saves time and increases operator productivity. Delayed memory transmission allows time choice for convenience &amp; cost. Latest laser technology minimizes need for costly resending of faxes. National network of specialized technicians gives you four support levels. Our own service network gives you easy, integrated &amp; effective support. Our unique UHQ technology gives you consistent higher quality print. Our list of satisfied return customers includes many industry leaders.</td></tr></tbody></table>', N'1 ', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (20, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Canon is the innovator in Laser Copy technology bringing you the best &amp; latest. Canon carries a prestige image with leading companies. Canon is the only company specializing in image processing technology. Only Canon has UHQ technology ensuring output that is highest quality. Our easy &amp; convenient patented cartridge system is ahead of others. For the future oriented, our plain paper gives speed, ease &amp; value. Four levels of service provide with quick, quality, up-to-date support. A nationwide network of support gives you easy access to our team. We keep long-term customers because of ability to meet changing needs. Delayed memory transmission lets you choose the best time to send. Hyper-smoothing gets around poor reception and poor line quality. Canon provides excellent image, technological edge, &amp; future flexibility.</td></tr></tbody></table>', N'6 ', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (21, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Innovative technology assists people in team to perform at their best. Our cartridge system with one step servicing is easy &amp; convenient. Advanced laser copy technology is used by 80% of the worldwide copy market. The plain paper saves effort, time &amp; cost &amp; gives clearest quality. Our unique UHQ technology gives high quality print reducing problems. Delayed memory transmission lets operators control their schedule. Nationwide service gives easy access for all parts of your operation. Four levels of service keep you in convenient &amp; quick contact with us. Service system is designed to build long-term relationship with you. Hyper-smoothing ensures clear communication with bad lines/reception. We have many repeat customers because of our ability to meet needs. Our technology saves time &amp; effort.</td></tr></tbody></table>', N'7 ', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (22, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Our technology will help your staff maintain effective communication. Unique cartridge system does away with unnecessary steps in service. Plain paper minimizes the common time consuming &amp; annoying problems. Unique UHQ technology gives quality print &amp; reduces need for correction. Paper recycling makes our plain paper copier environmentally friendly. The error correction mode ensures that faxes can be clearly read. Delayed memory transmission gives the team more time flexibility. Our integrated service support provides quick &amp; easy response for you. Four levels of support lead to convenience &amp; long-term relationships. Nationwide network allows all operations decentralized quality support. Hyper-smoothing compensates for bad lines &amp; ensures clear messages. We have many long-term customers because of our emphasis on service.</td></tr></tbody></table>', N'8 ', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (23, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Our technology is designed to provide the most effective communication. We do our own service to ensure closest relationships &amp; best response. Our 4 levels of service will give you integrated support long-term. Nationwide network allows support for entire team with equal quality. Our range is designed to meet varying needs of members of your team. Our memory function lets your operators receive even when paper is out. Delayed memory transmission allows people flexibility in sending time. Cartridge system reduces service steps giving time for other things. Hyper-smoothing gives clearer messages reducing communication errors. Plain paper allows for more environmentally friendly recycling. Plain paper gives you flexibility, convenience, and efficiency. Customer satisfaction is a primary goal &amp; is built into our support.</td></tr></tbody></table>', N'9 ', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (24, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Tested technology delivers effective communication with reliability. Four-level service system is structured for quality response &amp; support. We do our own service to ensure good communication &amp; quality results. Our selection of models gives you the one most appropriate to needs. Memory functions make sure you don''t miss or delay important messages. Delayed memory function lets your staff schedule the best time to send. Our cartridge system guarantees proper servicing and prevents mishaps. Our proven &amp; accepted technology is used in 80% of worldwide laser copy market. Spare parts easily available throughout the country minimizing delays. Our UHQ produces quality printing preventing errors &amp; misunderstanding. Dual access technology supports efficiency &amp; operator flexibility. Technology ensures constant clarity minimizing communication gaps.</td></tr></tbody></table>', N'10', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (25, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Reliable technology ensures quality results, communication effectiveness. Memory functions minimize delays &amp; gaps in important info. Transfer. Cartridge system gives quality &amp; minimizes operator service problems. Plain paper combines technical advantages with operator advantages. Delayed memory transmission gives operator flexibility &amp; cost benefits. Hyper-smoothing reduces line problems &amp; gives clear &amp; problem free copy. UHQ technology produces consistent quality &amp; reduces communication errors. Service is structured to give you technical expertise nationwide. 4-level service system designed for complete, accurate long-term support. One-day response guarantees efficient operator support. By doing our own service we integrate support &amp; ensure quality service. Satisfaction is high because of few technical problems &amp; good service.</td></tr></tbody></table>', N'11', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (26, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Our technology gives reliability, consistent results &amp; minimum problems. Tested cartridge system ensures continuous quality with efficiency. Our plain paper fax is fast, convenient, cost-effective, &amp; versatile. Canon''s reliable laser copy technology is used in 80% of worldwide laser copy equipment. Delayed memory transmission lets you schedule for best-cost benefit. Hyper-smoothing reduces transmission problems &amp; gives clearest results. UHQ technology results in consistently high quality print output. Dedication to image processing technology results in proven products. Technical support is integrated &amp; nationwide providing quality service. 4-level service system gives complete structured support long-term. We respond within 1 working day maximizing productivity. By doing our own service we ensure appropriate &amp; high quality support.</td></tr></tbody></table>', N'12', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (27, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Canon technology gives reliability, effectiveness and long-term value. Tested cartridge system ensures quality print with efficient servicing. Plain paper simplifies office procedures &amp; reduces operating costs. Delayed memory transmission ensures laser copy print at the most appropriate time. Hyper-smoothing results in quality result &amp; reduces costly resending. UHQ technology produces clear print limiting time-consuming clarifying. Error correction mode generates clarity &amp; reduces illegible printing. By doing our own servicing there are no unexpected surprises in support. Nationwide technical support provides consistent &amp; effective service. 4-level service system integrates all aspects of support efficiently. One-day response time assures productivity. Many repeat customers because of reliability &amp; cost effectiveness.</td></tr></tbody></table>', N'13', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (28, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Canon technology gives value and efficiency together with reliability. Cartridge system maximizes productivity &amp; ensures consistent quality. Delayed memory transmission lets you select the cheapest time to send. Hyper-smoothing minimizes the need to reprint because they are not clear. UHQ technology limits illegibility &amp; boost clarity, saving time. Error correction mode also saves time by ensuring clear transmission. Plain paper reduces operating costs &amp; supports productivity. By doing our own servicing, you get efficient, effective support. Nationwide technical support allows for decentralization &amp; reliability. 4-level service system makes contact quick &amp; direct &amp; good follow up. One-day response time reduces costly downtime. Many repeat customers for financial and efficiency reasons.</td></tr></tbody></table>', N'14', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (29, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Canon technology minimizes unnecessary costs &amp; maximizes efficiency. Delayed memory transmission lets you select the cheapest times to send. Hyper-smoothing reduces the need to print &amp; add extra costs. Cartridge system speeds up servicing &amp; reduces consumables inventory. UHQ technology produces consistent quality printing stopping guesswork. Dual access operation ensures high efficiency &amp; reduced operating costs. Faster transmission cuts telecom charges &amp; boosts operator efficiency. Nationwide service network reduces downtime &amp; provides quality support. Range of models allows you choice of most cost-effective alternative. By doing own servicing we reduce costly recurring technical problems. Our response time is within one working day. Customer service support keeps you efficiently stocked with supplies.</td></tr></tbody></table>', N'15', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (30, 21, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; color: #fff; font-size: 12pt; font-: arial,helvetica,sans-serif">
<tbody>
<tr><th colspan="2" style="text-align: left"><b>When selling Canon Laser Copy, stress the following points:</b></th></tr>
<tr>
<td colspan="2" style="text-align: left">Canon technology highlights productivity &amp; innovative features. Delayed memory transmission reduces costs &amp; increases flexibility. Cartridge system speeds up servicing, is easy, &amp; gives quality results. Advanced and effective nature of technology proved by 80% use worldwide. Unique hyper-smoothing boosts effectiveness &amp; clarity of messages. Patented UHQ technology improves print results; not available elsewhere. Dual access operation, another innovative feature, increases productivity. Nationwide service increases support &amp; makes contact direct &amp; easy. Range of models lets you select the best mix of features. With our own servicing you get quality results &amp; personal attention. One-day response minimizes down-time &amp; delays. We have many leading &amp; successful companies as long-term customers.</td></tr></tbody></table>', N'16', 1)
INSERT [dbo].[PC_MobileProductFeedback] ([ID], [ProductID], [Feedback], [MatrixPosition], [LanguageID]) VALUES (31, 23, N'Testing Product Feedback', N'1 ', 1)
SET IDENTITY_INSERT [dbo].[PC_MobileProductFeedback] OFF
/****** Object:  Table [dbo].[PC_MobileProductCompany]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PC_MobileProductCompany](
	[ProductCompID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
 CONSTRAINT [PK_Product_Company_Relation] PRIMARY KEY CLUSTERED 
(
	[ProductCompID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[PC_MobileCompany]    Script Date: 01/24/2012 13:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PC_MobileCompany]
AS
SELECT     TOP (100) PERCENT ID, Name
FROM         core.glb_Company
WHERE     (ModuleID = 4)
ORDER BY Name
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "glb_Company"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 185
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PC_MobileCompany'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PC_MobileCompany'
GO
/****** Object:  Table [dbo].[PC_MobileGeneralFeedback]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC_MobileGeneralFeedback](
	[GeneralFeedID] [int] IDENTITY(1,1) NOT NULL,
	[MatrixValue] [tinyint] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[GeneralFeedback] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PC_MobileGeneralFeedback] PRIMARY KEY CLUSTERED 
(
	[GeneralFeedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PC_MobileGeneralFeedback] ON
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (1, 1, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Tend to be interested in personal recognition and being praised for ideas and creativity. Be positive, enthusiastic, express emotion.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Tend to be more people-oriented than task oriented. Demonstrate ease of effort in using your product or service.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Talk about who else is using your product or service that is an industry leader.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (2, 2, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Tend to be Relationship-oriented. Focus on building a strong relationship first. Show feelings.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Talk about how your product or service will be good for people, the team.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Tend to be interested in preventing interpersonal conflict, creating a greater harmony and stability in the work environment.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (3, 3, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Tend to be interested in the logical and reliable and not taking risks.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Tend to be interested in written documentation that proves decisions are safe.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be serious, logical, evidence-based and fact oriented. Be punctual for meetings.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (4, 4, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be direct and come immediately to the issue at hand.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Talk results...how your proposition can save time and earn money.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Talk about achieving your listener’s goals... especially in the near term.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Demonstrate confidence in your product or service.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (5, 5, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th colspan="2" style="text-align: center"><b>Promoting with Controlling Tendencies</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be social to begin, shift to being direct...demonstrate openness; be both logical and show emotion.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Speak about the ease of using your product or service. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Praise their achievements and how your product or service will bring them personal recognition. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Talk about being seen as a “winner”, how the listener will stand out from others and gain notoriety. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Express how your product or service will save time and earn money.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (6, 6, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th colspan="2" style="text-align: center"><b>Promoting Style</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Start by being social, perhaps even humorous.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Talk about their ideas and what’s new, innovative, imaginative or creative about your product or service. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be visual, paint the big picture, be light on details. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Speak with feelings about achieving personal recognition for them. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Speak about which industry leader is using your product or service. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Stress the ease of using your product or service.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (7, 7, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th colspan="2" style="text-align: center"><b>Promoting Style with Facilitating Style Tendencies</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be open, spontaneous and informal. Be friendly and personable. Don’t be afraid to have some fun with your listener.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Focus on what about your product or service is good for people.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Speak about what is unique about your product or service. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be prepared to spend time with your listener.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Focus on and sharing emotions and good feelings. </td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (8, 8, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th  colspan="2" style="text-align: center"><b>Facilitating Style with Promoting Style Tendencies</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be personable, friendly and start by talking about non-business related topics around family &amp; friends. Empathize with your listener''s needs.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be prepared to spend most of the meeting on non-business issues.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Focus mainly on what how your product or service will promote teamwork and avoid interpersonal conflict.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Speak to how your product or service is proven safe for people.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Identify any well know company that is using your product or service.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (9, 9, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th colspan="2" style="text-align: center"><b>Facilitating Style</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Focus on building the relationship into a friendship. Be personable talk about feelings; empathize with your listener and his/her needs.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Do not rush, take time to build the relationship.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Resist temptation, talk about your product or service last, not first.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Stress how your product of service will create harmony, and good relations.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Avoid confrontation.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (10, 10, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th  colspan="2" style="text-align: center"><b>Facilitating Style with Analytical Style Tendencies</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be personable and social....and serious when speaking about the task.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be on time for your appointment ...and do not rush your meeting.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Focus on people issues; be prepared to support your arguments with facts and evidence.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be prepared to talk about details and planning supported by written documents.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be logical and non-confrontational.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (11, 11, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th colspan="2" style="text-align: center"><b>Analytical Style with Facilitating Style Tendencies</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be on time for meetings.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be prepared to answer detailed questions with fact and documents.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Demonstrate reliability of your product or service.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Show how your product or service is both safe and good for people.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Involve your listener in the implementation process, if possible, when it involves working with people.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (12, 12, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th colspan="2" style="text-align: center"><b>Analytical Style</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Important: Be on time for your meeting.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Limit small talk; come quickly to the task at hand.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be specific, talk evidence, facts and figures detailed and logical.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Bring charts, graphics as proof of past performance. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Offer a few options; help choose the best one.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>End your meeting as schedule. Do not run on.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (13, 13, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th colspan="2" style="text-align: center"><b>Analytical Style with Controlling Style Tendencies</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Start your meeting on time; avoid small talk.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Bring documentation proving results are achievable.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be serious and talk facts and figures.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Talk about how to save time and earn income in the near term.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Talk about process and reliability.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (14, 14, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th  colspan="2" style="text-align: center"><b>Controlling Style with Analytical Style Tendencies</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Limit small talk if any. Start quickly with business at hand.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Arrive for your meeting on time but be prepared to wait.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Focus on bottom line results in terms of time saved, money earned. Be prepared to address issues in detail. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be confident but do not argue with your listener’s logic. </td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Demonstrate how past performance will bring results in the near profit term.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (15, 15, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th colspan="2" style="text-align: center"><b>Controlling Style</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Come directly to the purpose of your meeting; the task at hand.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be efficient, do not waste time. Time is money for your Controlling Style listener.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Talk about the bottom line... especially results in the near term.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Demonstrate how your product or service will help your listener achieve their goals “now” in the short term. Achievement is key.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>List the pros and cons of the decision and wait for the decision...don’t try to force the decision.</td></tr></tbody></table>')
INSERT [dbo].[PC_MobileGeneralFeedback] ([GeneralFeedID], [MatrixValue], [LanguageID], [GeneralFeedback]) VALUES (16, 16, 1, N'<table width="100%" cellpadding="10" style="text-align: left; background-color: #0059ac; font-family: arial,helvetica,sans-serif; color: #fff; font-size: 12pt">
<tbody>
<tr><th colspan="2" style="text-align: center"><b>Controlling Style with Promoting Style Tendencies</b></th></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Be direct, but be prepared for limited small talk.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Focus mainly on achieving results, goals and objectives.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Relate goals and objectives to personal reward and recognition.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Discuss ideas, and innovative approaches that will achieve the listener’s goals.</td></tr>
<tr>
<td valign="top"><font color="#ff0000">•</font></td>
<td>Praise your listener for past achievement.</td></tr></tbody></table>')
SET IDENTITY_INSERT [dbo].[PC_MobileGeneralFeedback] OFF
/****** Object:  Table [dbo].[PC_MobileListener]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PC_MobileListener](
	[SurveyUserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[ProductID] [int] NULL,
	[Gender] [char](6) NOT NULL,
	[Age] [tinyint] NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](12) NULL,
	[SurveyDate] [date] NULL,
	[Address] [nvarchar](250) NULL,
	[Comments] [nvarchar](250) NULL,
	[RegID] [int] NULL,
 CONSTRAINT [PK_Survey_UserDateails] PRIMARY KEY CLUSTERED 
(
	[SurveyUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PC_MobileListener] ON
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (4, N'sdfd', N'sdfd', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 24)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (5, N'ra', N're', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 24)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (6, N'raj', N'jha', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 24)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (48, N'mukesh', N'kumar', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (49, N'abhinav', N'sehgal', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (51, N'Ben', N'Shalom', 1, N'Male  ', 32, N'b@ben.com', N'8183955065', CAST(0xB2340B00 AS Date), N'"111 Soap St.', N'Cool', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (52, N'Ben', N'Shalom', 1, N'Male  ', 32, N'b@ben.com', N'8183955065', CAST(0xB2340B00 AS Date), N'"111 Soap St.', N'Cool', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (53, N'Ben', N'Shalom', 1, N'Male  ', 32, N'b@ben.com', N'8183955065', CAST(0xB2340B00 AS Date), N'"111 Soap St.', N'Cool', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (54, N'ngsfj', N'mh', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (55, N'Ban', N'Ban', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (56, N'ben', N'ben', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (57, N'Gemma', N'G', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (58, N'ben', N'singh', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (59, N'ben', N'raj', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (60, N'rajesh', N'ben', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (61, N'ben', N'show', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (62, N'adhg', N'ahdkjvh', 5, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (63, N'adhg', N'ahdkjvh', 5, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (64, N'kksc', N'bsjchjkcs', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (65, N'kusha', N'ccf', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (66, N'kusha', N'ccf', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (67, N'gdrg', N'fgderfg', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (68, N'nbzn', N'kjzkj', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (70, N'ben', N'ben', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (71, N'ben', N'ben', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (72, N'ben', N'ben', 1, N'Male  ', 0, N'be', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (73, N'gemma', N'gollrad', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (74, N'Jose Luis', N'Cascallar', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (75, N'Bill', N'Jones', 5, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (76, N'jl', N'ca', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (77, N'a', N'a', 1, N'Male  ', 22, N'a@gmail.com', N'3333', CAST(0xB4340B00 AS Date), N'"Sdfdfdf', N'Sdfdsfsd', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (78, N'ab', N'ba', 1, N'Male  ', 22, N'ad@gmail.com', N'444', CAST(0xB4340B00 AS Date), N'"Sdfds', N'Sdfdsfs', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (79, N'd', N'a', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (80, N'a', N'aa', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (81, N'a', N'a', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (82, N'b', N'b', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (83, N'raj', N'raj', 1, N'Male  ', 0, N'raj', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (84, N'raj', N'raj', 1, N'Male  ', 0, N'raj', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (85, N'a', N'a', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (86, N'a', N'a', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (87, N'a', N'a', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (88, N'a', N'a', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (89, N's', N'a', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (90, N'sb', N'a', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (91, N'a', N'b', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (92, N'a', N'b', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (93, N'a', N'b', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (94, N'a', N'c', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (95, N'a', N'c', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (96, N'a', N'c', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (97, N'a', N'c', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (98, N'a', N'c', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (99, N'a', N'cd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (100, N'a', N'cdw', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (101, N'a', N'cdwd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (102, N'a', N'b', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (103, N'mukesh', N'kumarsingh', 1, N'Male  ', 33, N'sdfds', N'sdfdf((666', CAST(0xB5340B00 AS Date), N'"Sdfdsfs', N'Sfdfd', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (104, N'sads', N'sfsd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (105, N'rajesh', N'kumar', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (106, N'rajesh', N'kumar', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (107, N'sd', N'b', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (108, N'a', N'a', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (109, N'rajesh', N'kumar', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (110, N'raj', N'kumar', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (111, N'er', N'er', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (112, N'er', N'er', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (113, N'a', N'a', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (114, N'aaa', N'aaaa', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (115, N'ssss', N'aaaa', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (116, N'er', N'iu', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (117, N'vxx', N'hxjb', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (118, N'fxhtf', N'hjggxjukgjhx', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (119, N'rhfg', N'dfgdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (120, N'shane', N'singh', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (121, N'shane', N'singh', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (122, N'shane', N'singh', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (123, N'adfsa', N'sdfds', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (124, N's', N'sdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (125, N'aa', N'dd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (126, N'rajesh', N'rajsd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (127, N'afs', N'sfd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (128, N'asd', N'sdfd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (129, N'df', N'sfdd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (130, N'fghfg', N'dfgdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (131, N'dsfsd', N'sdfds', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (132, N'sdfsd', N'sdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (133, N'asdfs', N'sdfd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (134, N'adf', N'sdfd', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (135, N'sfssdfsd', N'sdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (136, N'sfssdfsd', N'sdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (137, N'sfssdfsd', N'sdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (138, N'sfssdfsd', N'sdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (139, N'dfgdf', N'dfgfd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (140, N'sfsd', N'sdfds', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (141, N'sdfsd', N'sdf', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (142, N'wer', N'wer', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (143, N'sfd', N'sdf', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (144, N'sdfds', N'sdf', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (145, N'ergert', N'sfsd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (146, N'trrtrtr', N'utuyuy', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
GO
print 'Processed 100 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (147, N'drtrdt', N'khjkhjk', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (148, N'sdfdsf', N'sdfdsfsd', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (149, N'sdfd', N'sdf', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (150, N'asdfdfds', N'sdfsd', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (151, N'sdfds', N'sdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (153, N'sdfds', N'sdfsd', 1, N'male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (154, N'sdfds', N'sdfds', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (155, N'abc', N'xyz', NULL, N'male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (156, N'sdfdf', N'sdfdsf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (157, N'sdf', N'sdfd', NULL, N'male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (158, N'sdfsd', N'sdfd', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (159, N'sdfd', N'sdfsd', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (160, N'raju', N'singh', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (161, N'ritu', N'singh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (162, N'sdfds', N'sdfds', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (163, N'dfgdfgdfdgdfg', N'dfgdfgdfdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (165, N'sdfdssd', N'sdfsd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (166, N'sdfsd', N'sdfsdsddddddddddd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (167, N'sdfsdfds', N'sdfsd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (168, N'sdfdfdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (169, N'aa', N'aa', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (170, N'bb', N'bb', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (171, N'asd', N'sdfsd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (172, N'raj', N'singh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (173, N'rajesh', N'singh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (174, N'ram', N'singh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (175, N'depak', N'singh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (176, N'adfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (177, N'a', N'b', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (178, N'dfsdf', N'sdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (179, N'sfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (180, N'dgdf', N'dfgfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (181, N'gagan', N'lamba', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (182, N'rajesh', N'kumar', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (183, N'a', N'b', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (184, N'a', N'b', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (185, N'rajesh', N'kumar', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (186, N'adfd', N'asdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (187, N'ds', N'dfg', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (188, N'dfgdf', N'dfgd', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (189, N's', N'f', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (190, N'b', N'd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (191, N'ram', N'singh', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (192, N'raj', N'singh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (193, N'sdfds', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (194, N'wrwerw', N'werwe', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (195, N'd', N'd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (196, N'ert', N'dfg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (197, N'abhinav ', N'sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (198, N'ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (199, N'shane', N'singh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (200, N'gagan', N'lamba', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (201, N'a', N'a', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (202, N'ss', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (203, N'fsdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (204, N'ffh', N'sdfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (205, N'sd', N'sdfds', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (206, N' hyfhggf', N'hf', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (207, N' gv', N'b,jk', 3, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (208, N' rtf', N'kjjhjhk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (209, N' rt', N'jgjh', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (210, N' jzgjyzg', N'jzz', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (211, N' hjgdshjds', N'nsvcbjsc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (212, N' asdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (213, N' dsdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (214, N' sdfds', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (215, N' sdfd', N'dfgfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (216, N' jon', N'g', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 45)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (217, N' abhinav', N'sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 46)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (218, N' quan', N'a', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 46)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (219, N' hjgsc', N',mxn', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 46)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (220, N' rrfjjfjfjjf', N'kdkfkfkkf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 46)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (221, N' abhinav', N'sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (222, N' a', N'a', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (223, N' ac', N'asd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (224, N' ghffhf', N'jghvjhjh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (225, N' gfg', N'gfg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (226, N' ksfhio', N'gjhgsx', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (227, N' sdfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (228, N' werwe', N'erew', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (229, N' asdf', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (230, N' zxcz', N'xcx', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (231, N' sdf', N'sdfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (232, N' sdf', N'sdf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (233, N' dsfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (234, N' a', N'a', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (235, N' asdf', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (236, N' QW', N'QWQ', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (237, N' sdfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (238, N' fds', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (239, N' uyggu', N'jhgjh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (240, N' abhinav', N'sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (241, N'          ', N'yhjj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (242, N' utyfyf', N'iyuuhiu', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (243, N' rtrt', N'guhu', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (244, N' fdgffdtfd', N'fhgjv', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (245, N' dgdf', N'sdfsd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (246, N' Bill', N'swartz', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 50)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (247, N' Jim', N'Jones', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 50)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (248, N'ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (249, N' werwer', N'ss', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
GO
print 'Processed 200 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (250, N' guf', N'hjhj', NULL, N'Male  ', 0, N'', N'', CAST(0xC9340B00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (251, N' sdfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (252, N' sfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (253, N' xyz', N'kunal', 16, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (254, N' ', N'cvhbjnkj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (255, N' amit', N'ss', 16, N'Male  ', 0, N'', N'', CAST(0xC9340B00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (256, N' aaaa', N'assd', NULL, N'Male  ', 0, N'       ', N'            ', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (257, N'       ', N'        ', NULL, N'Male  ', 0, N'          ', N'     ', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (258, N'          ', N'               ', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (259, N' test', N'123', NULL, N'Male  ', 34, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (260, N' vghklhcdc', N'bhkhcjodokc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (261, N' xyz', N'ghj', 16, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (262, N' ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (263, N' gjh', N'jjj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (264, N' ', N'gvgg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (265, N' xfjf', N'mgghg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (266, N' ttttt', N'tst', 16, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (267, N' rrr', N'rrrs', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (268, N' trt', N'yt', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (269, N' amit', N'shr', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 52)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (270, N' sdfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0xCA340B00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (271, N' gfgfgf ', N'jhgjhgjh        ', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (272, N' sdfd', N'sdfd', 1, N'Male  ', 0, N'', N'', CAST(0x87370B00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (273, N' sdfd', N'sdfd', 1, N'Male  ', 0, N'', N'', CAST(0x51340B00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (274, N' sdfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (275, N' dfgfg', N'dgf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (276, N' dfgf', N'dfgf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (277, N' xcvxcv', N'xcvcx', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (278, N' sdfsd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (279, N' sdf', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (280, N' dfsd', N'sdf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (281, N' sdfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (282, N' dsfsd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (283, N' sdfd', N'sdfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (284, N' sdfsd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (285, N' dgfd', N'dfgfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (286, N' dgdfg', N'dfgdf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (287, N' sdjoffddfrw', N'fjohgfjjgk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (288, N' wrtnrnjmeg', N'djfgnefjgnfe', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (289, N' fytfty', N'vhvh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (290, N' vcb', N'cvbvc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (291, N' ytryfttf', N'fhvgv', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (292, N'Sdfdsds', N'sdfsdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (293, N' j', N'jhsdhjsc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (294, N' bcgb', N'vhg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (295, N' quan', N'q', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (296, N' Quan', N'Lieu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (297, N' jhgc', N'sg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (298, N' ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (299, N' abhinav', N'sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (300, N' df', N'kjdhjkd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (301, N'Sdfsd', N'sdfdsf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (302, N'Xdff', N'sdfdsf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (303, N'Sdfdsfsdf', N'Sfdsfdsfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (304, N'Sdfdsfd', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (305, N'Aaaa', N'bbbbb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (306, N'Bbb', N'Bvvvv', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (307, N'Ccc', N'Ccc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 23)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (308, N' amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 59)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (309, N' amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 59)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (310, N' lll', N'lll', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 59)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (311, N' 111', N'222', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 59)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (312, N' john', N'doe', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 59)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (313, N' john', N'doe', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 59)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (314, N' john', N'doe', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 59)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (315, N' amy', N'test', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 59)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (316, N' a', N'k', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 59)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (317, N'Ffyfyft', N'Fgfygyi', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (318, N'Dyfhbhbk', N'Jgjkhjih', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (319, N' Abhinav', N'Sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (320, N' ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (321, N'Abhinav', N'Sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (322, N'Ben', N'Shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (323, N'Ben', N'Shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (324, N'Shane', N'Toor', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (325, N'Ram', N'Singh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (326, N'Ss', N'Sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 70)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (327, N'Rasd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 70)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (328, N'Sdfd', N'Sdf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 70)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (329, N'Asds', N'asds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (330, N'Sdfds', N'Sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 70)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (331, N'Sdfsd', N'Sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 70)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (332, N'Grdhtfhgyjyg', N'Jygjygjgkh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 75)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (333, N'Jfjgkgk', N'Vjgkjhl', NULL, N'Female', 0, N'', N'.', CAST(0x5B950A00 AS Date), N'"Hvhvgvg', N'Ijinjnk', 75)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (334, N'Amit', N'Yadav', 1, N'Male  ', 0, N'', N'', CAST(0x8D370B00 AS Date), N'"Elf Vitebsk nfnf hdnd', N'Ankit is aged boy', 73)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (335, N'Sdfds', N'Sfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 75)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (336, N'Amit', N'Yadav', 3, N'Male  ', 0, N'', N'', CAST(0xD0340B00 AS Date), N'"Fdgdhchcj', N'Hdjfv', 73)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (337, N'Sdfd', N'qwewew', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 70)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (338, N'Ryfthfj', N'Hbhibn', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (339, N'Fghj', N'Bvnvbhj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (340, N'Mukesh', N'Singh', NULL, N'Male  ', 0, N'', N'', CAST(0xD0340B00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (341, N'Fgfghfghfg', N'Gvhvjvgj', 3, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (342, N'Fbcv', N'Cvb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 70)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (343, N'Sdfsdf', N'sdfdsfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (344, N'Dfd', N'Sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (345, N'Asdf', N'Sfdd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (346, N'Rgdfgdf', N'sdfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 70)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (347, N'sfdsd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (348, N'sdfdsdfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (349, N'sdfds', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (350, N'fr', N's', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
GO
print 'Processed 300 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (351, N'aaaa', N'aaa', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (352, N'xcvcdxcvcxwq', N'xcvcxv', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (353, N'mskdf', N'sfsdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (354, N'asdf', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (355, N'dfgdfgdfdfgq', N'dgdfgfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (356, N'Effete', N'Fyhfyu', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (357, N'Nehru', N'Guhuihui', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (358, N'Trucking', N'Ghjgjgjhh', 3, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (359, N'Abhinav', N'Sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (360, N'Ben', N'Shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (361, N'yfgrd', N'bvh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (362, N'ssdfsdf', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (363, N'A', N'B', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (364, N'C', N'D', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (365, N'Graf', N'Guys', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (366, N'Agra', N'A taj', NULL, N'Female', 0, N'', N'645465646', CAST(0xD3340B00 AS Date), N'"Gftaz', N'VgwzjShghfza', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (367, N'J', N'Jh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (368, N'sdfdsfd', N'sdfdsfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (369, N'sdfdf', N'sfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (370, N'sf''s', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (371, N'sdfd', N'sdfdsf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (372, N'sdfdsf', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (373, N'Mary', N'Cooper', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 50)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (374, N'ram', N'rams', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (375, N'sdasd', N'asdasdas', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (376, N'sfdd', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (377, N'dfgdf', N'dfgdfg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (378, N'sdf', N'sdfds', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (379, N'sdfsd', N'sdfd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (380, N'sdfds', N'sdfsdfsd', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (381, N'sdfsdf', N'sdfdsfds', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (382, N'sdfds', N'sdfdsfds', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (383, N'sfsd', N'sdfsdf', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (384, N'dfgdf', N'sdfsdf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (385, N'ftyfhfuhfthfhtff', N'hfghfgghfhggf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (386, N'ydtfhgf', N'fghfgjvj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (387, N'dfgfff', N'cghvjvj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (388, N'tydtyfu', N'jguh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (389, N'gyuyguf', N'jgjgjhb', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (390, N'hdtgftf', N'jgygu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (391, N'ytdfthft', N'hhvjgj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (392, N'dyfththf', N'chjvgu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (393, N'chhvgh', N'vhbj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (394, N'fyfytfy', N'gjh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (395, N'Ben', N'Shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (396, N'Abhinav', N'Sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (397, N'Emily', N'Keongam', 2, N'Female', 88, N'Qlieeeeeeeee', N'4152420388', CAST(0xD5340B00 AS Date), N'"2334 28th Ave
San Francisco', N'Friday is field trip', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (398, N'Hien', N'Lieu', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (399, N'qty', N't', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 79)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (400, N'qtp', N'st', 19, N'Male  ', 0, N'', N'', CAST(0x3D3A0B00 AS Date), N'"', N'', 79)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (401, N'sdfd', N'sdfdsf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (402, N'Amy', N'Twang', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (403, N'Amy', N'Twang', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (404, N'Bf', N'Jjgg', 2, N'Female', 0, N'', N'5', CAST(0xD5340B00 AS Date), N'"V', N'Gnu', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (405, N'N', N'H', NULL, N'Female', 0, N'J', N'', CAST(0x5B950A00 AS Date), N'"', N'Jk', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (406, N'fdsfsd', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (407, N'A', N'B', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (408, N'G', N'J', 3, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (409, N'A', N'B', 8, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (410, N'C', N'D', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (411, N'E', N'F', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (412, N'G', N'H', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (413, N'I', N'J', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (414, N'A', N'B', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (415, N'A', N'B', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (416, N'A', N'B', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (417, N'A', N'B', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (418, N'adfsaf', N'sdfsdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (419, N'A', N'B', NULL, N'Female', 1, N'G', N'2', CAST(0xB7340B00 AS Date), N'"T', N'Y', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (420, N'A', N'B', NULL, N'Female', 0, N'A@', N'', CAST(0xB7340B00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (421, N'???', N'b', NULL, N'Female', 0, N'', N'', CAST(0xB7340B00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (422, N'Emily', N'Keongam', 2, N'Female', 0, N',r', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (423, N'Donald', N'K', 3, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (424, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (425, N'Eiko', N'G', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (426, N'A', N'B', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (427, N'A', N'B', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (428, N'A', N'B', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (429, N'sfds', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (430, N'A', N'B', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (431, N'A', N'B', 5, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (432, N'sdfds', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (433, N'sdfsd', N'sadfsa', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (434, N'sf''s', N'sdfsdf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (435, N'sdfds', N'sfs', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (436, N'zxczZCqwe', N'werweew', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (437, N'bvnvbsaaCXB', N'BVDFGDFGD', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (438, N'sdfsd', N'sfa', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (439, N'sdfds', N'sdfsaf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (440, N'sfs', N'sfsa', NULL, N'Male  ', 0, N'asdfasfa', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (441, N'sf', N'sdfsd', NULL, N'Male  ', 0, N'mkss30@gmail.com', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (442, N'DSDF', N'SDFSDA', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (443, N'Abhinav', N'Sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (444, N'Fhb', N'Hjhgjhb', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (445, N'sdfd', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (446, N'mukesh', N'kumardsdds', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (447, N'sfd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (448, N'mkss', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (449, N'dfg', N'dfgd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (450, N'sdfsd', N'sfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (451, N'sdfd', N'sdfsdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
GO
print 'Processed 400 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (452, N'sdfs', N'sadfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (453, N'szdfcs', N'sdfdsfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (454, N'dgdqsdgdsf', N'rtert', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (455, N'xcdfg', N'xcfgdfgdf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (456, N'a', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (457, N'sdf', N'asdfa', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (458, N'aple', N'aplld', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (459, N'erter', N'ertr', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (460, N'dfsdfsd', N'sfd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (461, N'asdf', N'sdfq', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (462, N'mk', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (463, N'Mukesh', N'singh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (464, N'dfgdfq', N'efdg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (465, N'asdfd', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (466, N'dfgdf', N'dfgdfgdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (467, N'asfds', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (468, N'asdfsdf', N'sdfsdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (469, N'dfgf', N'fdgdfg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (470, N'fds', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (471, N'tryrty', N'rtyrty', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (472, N'abhinav', N'sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (473, N'vcf', N'jguyg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (474, N'sfds', N'sdfsdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (475, N'fhg', N'hjghjg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (476, N'df', N'sdf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (477, N'sdf', N'sfsdfsd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (478, N'sdf', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (479, N'aaa', N'ggg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (480, N'sf', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (481, N'erter', N'werewrwe', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (482, N'tty', N'hj', NULL, N'Male  ', 0, N'', N'', CAST(0x47360B00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (483, N'wre', N'wrw', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (484, N'ertrewerwe', N'rtwetr', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (485, N'res', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (486, N'yghggh', N'ihkjjk', 2, N'Male  ', 3, N'mkss@gmai.com', N'3', CAST(0xE7340B00 AS Date), N'"fgg', N'kjj', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (487, N'dfdsf', N'sdfsd', 2, N'Male  ', 33, N'', N'3333', CAST(0x80340B00 AS Date), N'"		DDR', N'Kiki', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (488, N'Donald', N'Keongam', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (489, N'tfytf', N'gyugyuyg', 2, N'Male  ', 44, N'uuj@gmail.com', N'34', CAST(0xBE340B00 AS Date), N'"ghigvhg', N'khbnjkj', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (490, N'cfycfyft', N'gu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (491, N'trdfcfycgy', N'hvhbhuj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (492, N'etdt', N'yuygy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (493, N'gdgfdgdf', N'fhghff', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (494, N'sf', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (495, N'fretetr', N'tfgfty', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (496, N'xrgxrgddgdrrg', N'hghb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (497, N'gchgghhgf', N'fhgj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (498, N'rdtdy', N'jg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (499, N'dgfdgfhfg', N'hfghgf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (500, N'ufgu', N'hjjh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (501, N'abhinav', N'sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (502, N'ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (503, N'Donald', N'Keongma', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (504, N'Jon', N'Gornstein', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (505, N'John', N'Doe', NULL, N'Male  ', 22, N'Quan@personaglobal.com', N'4153313900', CAST(0xDC340B00 AS Date), N'"Sssssswsssd', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (506, N'x', N'j', NULL, N'Female', 0, N'', N'', CAST(0xDC340B00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (507, N'Eiko', N'Kaniya', NULL, N'Female', 0, N'', N'', CAST(0xDC340B00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (508, N'Quan', N'Lieu', NULL, N'Female', 0, N'', N'', CAST(0xDC340B00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (509, N'Quan', N'Lieu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (510, N'Jon', N'G', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (511, N'Eiko', N'G', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (512, N'yyyyyfsvjrfkfgkhgxkghjsfhsahjsf', N'liuyttjfdvjkdfjofdjodfkfdkjdffd', 3, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (513, N'quan', N'c', 3, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (514, N'wwrtyiphvyddg', N'rtukkhfdsfhm', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (515, N'rrrrr', N'uhhh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (516, N'sshdfhfdhjfd', N'dnsediedusdsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (517, N'qquuauaa', N'dssddsdsxssd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (518, N'Quan', N'Lieu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (519, N'yyyy', N'eeessdc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (520, N'sssd', N'trtrtrtrtrgf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (521, N'd', N'e', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (522, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (523, N'd', N'd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (524, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (525, N's', N'y', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (526, N'quaa', N'ddsdsds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (527, N'ffggg', N'jjkk', 5, N'Male  ', 0, N'', N'', CAST(0xDC340B00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (528, N'a', N'b', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (529, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (530, N'r', N'y', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (531, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (532, N'a', N'bbb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (533, N'a', N'b', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (534, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (535, N'abbbbb', N'bbbbb', 7, N'Female', 3, N'', N'', CAST(0xDC340B00 AS Date), N'"', N'M""""''mnbgh', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (536, N'fdfg', N'asds', 3, N'Male  ', 0, N'', N'', CAST(0xDD340B00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (537, N'fdf', N'dsf', NULL, N'Male  ', 0, N'', N'', CAST(0xDD340B00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (538, N'sdf', N'sdfd', NULL, N'Female', 0, N'', N'', CAST(0xDD340B00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (539, N'dgd', N'dgd', NULL, N'Male  ', 0, N'', N'', CAST(0xDD340B00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (540, N'sdfd', N'sdfd', NULL, N'Female', 0, N'', N'', CAST(0xDD340B00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (541, N'sdfds', N'sdfdsf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (542, N'dfgdgdfgfdffffffffffffffffffffffffff', N'sdaaaaaaaaafffffff', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (543, N'sdddddddddddddddddddddddddd', N'sdfffffffffffffffffdfffffffffffffffffffffffff', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (544, N'sdfffsfsdfsdfsdfsdfsdfsdfsfdsfdsfdsfsd', N'sdfdsfdsfsdfsdfdsfdsfsdfsdfdssdfsdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (545, N'RajevSinghKumarMukeshkumars', N'Tithesdfsdfsfsdfsfsdfsfsdfsdfsdfsdfsfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (546, N'ramsinghkumarsinghkumarsingh', N'tifudfdfdsksdkskfskskskfskfskzfdkssdk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (547, N'sdfssdfsfsdfsdfsdfssdfsdfsfsf', N'ramsinghramsinghramsinghramsingh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (548, N'ram', N'singhsujsdfsdjsdkskdk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (549, N'sdfdfdsfsdfdf', N'TTkfdkfdkfkdkfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (550, N'abhinav', N'sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (551, N'ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (552, N'shane', N'toor', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
GO
print 'Processed 500 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (553, N'ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (554, N'shane', N'toor', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (555, N'sdfsdfsdfsfsfsdfsd', N'asdfsfsfsfdfsdfsdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (556, N'were', N'fgdfgdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (557, N'erwerwef', N'asdfgadsfadsasasfs', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (558, N'sdfdsfsdfsdfsdfsdf', N'sdfsdfsdfsdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (559, N'ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (560, N'Andy', N'sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (561, N'ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (562, N'ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (563, N'amy', N'gt', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (564, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (565, N'fghdfsdgsdgdfgsdgdgfsdgsdg', N'dsfgdsgdsfgdfgdfgdfgdfgdf', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (566, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (567, N'sdfsdfsdfsd', N'sdfsdfdsfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (568, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (569, N'a', N'a', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (570, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0xDD340B00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (571, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (572, N'fyfyt', N'guhguh', 2, N'Male  ', 5, N'm@h.nm', N'4', CAST(0xC0340B00 AS Date), N'"gh', N'kmk', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (573, N'trrtcr', N'ghi', 2, N'Male  ', 0, N'', N'', CAST(0xC0340B00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (574, N'reredrtrtftdrd', N'hguuy', 3, N'Female', 4, N't@g.n', N'', CAST(0xCD330B00 AS Date), N'"hghygh', N'b nvjhfhgf', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (575, N'sjjjd', N'djjd', NULL, N'Male  ', 22, N'D@y.com', N'1', CAST(0xDE340B00 AS Date), N'"Qw', N'Qw', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (576, N'rtyrtyrt', N'ertertr', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (577, N'sdfsdf', N'sdfsd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (578, N'ertrewe', N'werewrw', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (579, N'Mukesh', N'kumar', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (580, N'kxb', N'd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (581, N'hgczcghkchgzvjkgzgjhgjhgjhgjhgjkg', N'hghghmghjgmjgkjhjkgkugukhjkhkjhkuhkuhkuhkuh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (582, N'jhaghjga', N'kjhzh', NULL, N'Male  ', 0, N'Jhzliljz@ahaj.haha', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (583, N'fgg', N'fhh', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (584, N'gyuguyygu', N'idghfofghjodjigort', 5, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (585, N'yuf', N'yiiyyyiyyiyyy', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (586, N'tytffgv', N'ghugyuyb', 5, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (587, N'ythtffyfyfttfufutfuftfu', N'vugiigiugiugohu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (588, N'rtdfs', N'fffggfghtfbhtcb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (589, N'rdrcghghhhj', N'guhjjk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (590, N'ftyfutuy', N'ijbkbkhkkh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (591, N'hfjfiufyigjgugufyuf', N'fgggfhfhfg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (592, N'dtyutftfufyjyvjyvjvy', N'jvjbkhkugb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (593, N'tyftyfthhyjhvvv', N'hbbubunjkk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (594, N'rdydtyffuguyg', N'giuhiihohohoh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (595, N'dffds', N'fdd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (596, N'vcgf', N'gkjhkj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (597, N'bvcvbcbjn', N'hmbmh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (598, N'John', N'DOE', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (599, N'x', N'y', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (600, N's', N's', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (601, N'd', N'd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (602, N'r', N'd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (603, N'e', N'e', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (604, N'd', N'd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (605, N'WWWW', N'quq', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (606, N'e', N't', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (607, N'ana', N'murphy', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (608, N'd', N'd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (609, N'dd', N'ddd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (610, N'eee', N'ede', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (611, N'ss', N'ssss', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (612, N'ddddd', N'ddddd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (613, N'sss', N'ssss', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (614, N'reerdsd', N'fdfefddf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (615, N'rfreefef', N'sddcdcdc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (616, N'adsdsscsc', N'dssccssc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (617, N'jon', N'Gornstein', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (618, N'ddd', N'ddddd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (619, N'xdddd', N'ddsdd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (620, N'eee', N'fffffy', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (621, N'Ananlyticla', N'Mmss', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (622, N'test', N'sss', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (623, N'Analyticles', N'Test', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (624, N'x', N't', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (625, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (626, N'e', N'g', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (627, N'e', N'e', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (628, N's', N's', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (629, N'bvcvc', N'mhvg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (630, N'hgfghf', N'nmvnmb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (631, N'ghmsgm', N'sgmhcxb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (632, N'hf', N'hkh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (633, N'ghfjy', N'juk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (634, N'cc', N'gkj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (635, N'gfhf', N'hgjhgyk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (636, N'jhjdvhsg', N'ljisdkljs', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (637, N'vmhvh', N'kjkjsc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (638, N'X', N'y', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (639, N'gxgf', N'hjgjhg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (640, N'gjh', N'mhjh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (641, N'hgh', N'mbjhjk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (642, N'bgcfhg', N'jhgg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (643, N'q', N'S', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (644, N'vbd', N'gnhgnh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (645, N'dfdgf', N'ngfngf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (646, N'sssss', N'gggg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (647, N'cdecde', N'y', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (648, N'effef', N'nhyy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (649, N'mhgzjh', N'kjhhz', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (650, N'e', N'vv', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (651, N'ncgchg', N'vnhvj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (652, N'bvch', N'hjh', 3, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (653, N'jhggn', N'jhgg', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
GO
print 'Processed 600 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (654, N'vdvfd', N'ff', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (655, N'quab', N'ddc', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (656, N'fhgfgh', N'jgjjg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (657, N'XYZ', N'C', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (658, N'fgfh', N'nbvhj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (659, N'XXXXX', N'yyyyy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (660, N'hjyf', N'hjgjg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (661, N'eee', N'hhhhh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (662, N'vfddv', N'fnhg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (663, N'ffff', N'yyyy', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (664, N'cdecfe', N'nuhyn', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (665, N'ttttt', N'hhhh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (666, N'mdh', N'kjdhkjh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (667, N'deded', N'vfrvgr', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (668, N'sddsheuerre', N'dfdfcddc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (669, N'vvghv', N'kjk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (670, N'YYYY', N'zzzzz', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (671, N'bhjbjh', N'jnkn', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (672, N'hth', N'hnnh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (673, N'hvjhv', N'kj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (674, N'gf', N'jjh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (675, N'eeee', N'fffg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (676, N'hgfg', N'jhg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (677, N'nv', N'bkjh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (678, N'khkj', N'kjhh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (679, N'XXX', N'YYYY', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (680, N'jgug', N'kh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (681, N'jgugjg', N'vh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (682, N'ddd', N'yyyy', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (683, N'hfhgfhghj', N'jkhhkjhjk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (684, N'ghmm', N'kjhjkjh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (685, N'gukhku', N'khjhk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (686, N'gc', N'mhvjh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (687, N'kkjh', N'jkhkjh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (688, N'dsss', N'yyy', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (689, N'hmjkhhmjbmj', N'mnbmbmj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (690, N'xsdsx', N'xxxx', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (691, N'dddf', N'fgggg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (692, N'John', N'Doe', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (693, N'XYZ', N'X', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (694, N'Eiko', N'Kaniya', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (695, N's', N's', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (696, N'John', N'Doe', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (697, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (698, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (699, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (700, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (701, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (702, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (703, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (704, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (705, N'Eiko', N'Kanyiza', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (706, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (707, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (708, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (709, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (710, N'ana', N'murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (711, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (712, N'cfgchg', N'hjghjg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (713, N'hvv', N'jk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (714, N'Ana', N'K', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (715, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (716, N'Emily', N'K', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (717, N'Emily', N'K', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (718, N'ana', N'm', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (719, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (720, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (721, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (722, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (723, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (724, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (725, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (726, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (727, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (728, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (729, N'eiko', N'kaniya', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (730, N'a', N'kaniya', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (731, N'Eiko', N'a', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (732, N'a', N'kaniya', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (733, N'e', N'kaniya', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (734, N'Vivian', N'M', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (735, N'Vivian', N'M', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (736, N'Jon', N'J', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (737, N'Jon', N'T', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (738, N'Thanh', N'Lieu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (739, N'Tina', N'L', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (740, N'Tina', N'L', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (741, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (742, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (743, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (744, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (745, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (746, N'a', N'y', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (747, N'amy', N't', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (748, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (749, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (750, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (751, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (752, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (753, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (754, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
GO
print 'Processed 700 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (755, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (756, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (757, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (758, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (759, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (760, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (761, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (762, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (763, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (764, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (765, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (766, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (767, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (768, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (769, N'Ben', N'Shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (770, N'Ishwari', N'Singh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (771, N'jfhsg', N'csj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (772, N'vg', N'jhi', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (773, N'zxcxzc', N'xcvcxv', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (774, N'xvxcv', N'dfgfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (775, N'vcbcxb', N'xcvcx', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (776, N'ccvcxvxcxvxc', N'xcvxcv', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (777, N'sdfsd', N'sfsdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (778, N'xvxXF', N'XCVCX', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (779, N'DGDFDFGDF', N'DFGFD', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (780, N'kkgjg', N'jhkhkh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (781, N'hkjkhkh', N'uihuiu', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (782, N'sdfsdfsd', N'sfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (783, N'sdfds', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (784, N'dfgdf', N'sfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (785, N'fsdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (786, N'sfsdfsd', N'sd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (787, N'rtyrtydgq', N'fghfghfg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (788, N'ersdfds', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (789, N'sdfsd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (790, N'sdfdsfd', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (791, N'sdfds', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (792, N'sdfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (793, N'fsdfsdfdsfsd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (794, N'sdfsdfs', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (795, N'sfsd', N'dfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (796, N'fsdfds', N'dfdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (797, N'fsdfds', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (798, N'sdfsdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (799, N'wddasda', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (800, N'sdfsdf', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (801, N'wewewdfdsf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (802, N'sdfd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (803, N'asdas', N'asdsa', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (804, N'sdsadas', N'sdaas', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (805, N'sdf', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (806, N'sdfd', N'sdfd', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (807, N'sfsdf', N'sdfsd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (808, N'sdfdsf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (809, N'e', N'e', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (810, N'fgreteteerter', N'dfgf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (811, N'dfgdfgsdfds', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (812, N'dgffgf', N'dfgfdg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (813, N'sdfds', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (814, N'sdfsd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (815, N'sfd', N'sdfsdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (816, N'sdf', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (817, N'sdfsd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (818, N'sdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (819, N'sdfsd', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (820, N'dfgdfg', N'dfgdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (821, N'sdfd', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (822, N'ytytyt', N'uii', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (823, N'tffgg', N'uikji', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (824, N'ugugfhgjh', N'hjjkk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (825, N'fy', N'hmgkj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (826, N'ytgyyg', N'kjkjkj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (827, N'ffg', N'ghj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (828, N'sfsd', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (829, N'sdfsdf', N'sfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (830, N'sdfds', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (831, N'asas', N'dfsfsdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (832, N'sdfs', N'sfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (833, N'dfsfs', N'sdfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (834, N'sfds', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (835, N'sdfsd', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (836, N'sd', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (837, N'f', N'd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (838, N'sdfsdsfsd', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (839, N'fytfytf', N'vjvhjhv', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (840, N'rtdyrdrgf', N'kghjhui', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (841, N'edd', N'yufg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (842, N'rdgfdfty', N'ghh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (843, N'ddytcty', N'ygubuibu', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (844, N'rsdfg', N'jjhggu', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (845, N'tdyytch', N'hfgvhjbhj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (846, N'tdyf', N'khj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (847, N'fggjhv', N'bhkbjk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (848, N'hfhvhgvj', N'hgbh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (849, N'hgfhghbg', N'hjijinnji', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (850, N'htfghvjhvbhj', N'kjjhkjkhkjh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (851, N'gggh', N'hjj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (852, N'uftfutf', N'fggh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (853, N'sfw', N'rf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (854, N'df', N'df', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (855, N'ggh', N'jkkk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
GO
print 'Processed 800 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (856, N'sdsdfssdfds', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (857, N'sdfsd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (858, N'sdfds', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (859, N'fgh', N'hjj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (860, N'fgghfg', N'jvgjjv', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (861, N'fyfhvjghcgvh', N'jvhv', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (862, N'dgchvg', N'vjbkb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (863, N'dssersersreser', N'ftdfyfty', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (864, N'gfjdfhug', N'ftgyhu', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (865, N'cjyfcgvg', N'hghhujuj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (866, N'cfftg', N'gvgguh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (867, N'dddddd', N'hhhhh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (868, N'gggg', N'hhhhh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (869, N'cgugjljkkl', N'hkll', NULL, N'Male  ', 45, N'', N'44', CAST(0x09350B00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (870, N'dygyh', N'ghhijokxs', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (871, N'rsrdtfyh', N'gvhj', NULL, N'Male  ', 45, N'', N'556', CAST(0xBB330B00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (872, N'stfyguh', N'gujikokp', NULL, N'Male  ', 45, N'', N'3455', CAST(0x09350B00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (873, N'yygiyiglguioihhpi', N'drftgyhujip', NULL, N'Female', 45, N'', N'458', CAST(0x09350B00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (874, N'fyhuj', N'gyhikok', NULL, N'Female', 0, N'', N'', CAST(0x09350B00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (875, N'rdgjjkk', N'fhhjjlk', NULL, N'Male  ', 45, N'', N'465667', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (876, N'hgfgh', N'hv', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (877, N'jy', N'jghgju', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (878, N'fhg', N'kuhki', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (879, N'dtd', N'nj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (880, N'hffh', N'gg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (881, N'fbdg', N'gu', NULL, N'Male  ', 0, N'', N'5876', CAST(0x5B950A00 AS Date), N'"Highly', N'Mbgjcghc', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (882, N'nhg', N'guu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (883, N'hgggjg', N'mugu', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (884, N'test', N'test', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (885, N'sdff', N'fghjjj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (886, N'fdrfgh', N'hgjkkok', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (887, N'fhfhv', N'hjbkjn', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (888, N'sdertyui', N'djoop', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (889, N'Emily', N'Keongam', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (890, N'aaaaaaa', N'aaaaaa', 1, N'Male  ', 53, N'a@s.com', N'535535355353', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (891, N'Donald', N'Keongam', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (892, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (893, N'Eiko', N'Kaniya', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (894, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (895, N'testing', N'again', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (896, N'John', N'Doe', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (897, N'Mary', N'C', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (898, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (899, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (900, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (901, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (902, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (903, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (904, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (905, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (906, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (907, N'sedtfyhuhij', N'gfhhkkllp', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (908, N'drjfhkljhhok', N'cfhfyhij', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (909, N'sfdffjh', N'kkrhtudtfj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (910, N'sdfght', N'ffggggggffdddf', 7, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (911, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (912, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (913, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (914, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (915, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (916, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (917, N'a', N'b', NULL, N'Female', 6, N'I@l.co', N'', CAST(0xCC340B00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (918, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (919, N'efbf', N'fjjhj', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (920, N'apE', N'b', NULL, N'Female', 4, N'L@y.c', N'5', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (921, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (922, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (923, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (924, N'ab', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (925, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (926, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (927, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (928, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (929, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (930, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (931, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (932, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (933, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (934, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (935, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (936, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (937, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (938, N'mks', N'amoksaoaooa', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (939, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (940, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (941, N'sadsadsad', N'safdsgdsgsfgsfgsf', 12, N'Female', 12, N'aaaaaa@aaa.xol', N'', CAST(0xEC340B00 AS Date), N'"hhshshhs', N'osiisiaiisiaiaiijjsjsjjjjsjsjjjjjjjj', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (942, N'ftftgyg', N'gvygyhyhyhyuhyhyh', NULL, N'Male  ', 0, N'', N'', CAST(0xEC340B00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (943, N'dcvgbyh', N'gughunuij', NULL, N'Female', 0, N'', N'', CAST(0xEC340B00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (944, N'ttttttttttttttttttttttt', N'rrrrrrrrrrrrrrrrrrrrrrr', NULL, N'Male  ', 0, N'', N'', CAST(0xEC340B00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (945, N'qeweerrioigyijgyuyuyuyuyuyuyu', N'uyuuuuupuuppuu', NULL, N'Male  ', 0, N'', N'', CAST(0xEC340B00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (946, N'tfgujok', N'dgkoi', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (947, N'gargaerehahareshrtsntrrtnstsnsrtnsnrtnsnrsnnttugij', N'gchhijkhjl', 5, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (948, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (949, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (950, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (951, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (952, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (953, N'abc', N'a', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (954, N'ftgyuhui', N'gubjmkp', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (955, N'rr', N'yyyyyyy', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (956, N'errtt', N'fgghgjbjnkmkm', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
GO
print 'Processed 900 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (957, N'Eiko', N'Kaniya', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 89)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (958, N'pandu', N'ranga', 5, N'Male  ', 47, N'hiuh@gmail.com', N'456678889997', CAST(0xF7330B00 AS Date), N'"tttgff', N'uuhh', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (959, N'chjjokoo', N'vhhkklkp', NULL, N'Male  ', 0, N'', N'', CAST(0xF7330B00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (960, N'dfgdf', N'dfgfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (961, N'sfsd', N'sf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (962, N'sdfsd', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (963, N'xcvc', N'sfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (964, N'sdfd', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (965, N'sdfsd', N'sdfsd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (966, N'sdfds', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (967, N'dfsdf', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (968, N'werew', N'were', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (969, N'fsfssfsd', N'sfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (970, N'wrfw', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (971, N'jhjb', N'hg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (972, N'ghcghgc', N'jb', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (973, N'sdfds', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (974, N'werwer', N'werew', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (975, N'dfgf', N'sfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (976, N'dfgdfgd', N'dfgdf', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (977, N'sfsd', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (978, N'dgdgdgdfq', N'dfgfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (979, N'sdfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (980, N'xcv', N'VXDS', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (981, N'rar', N'rere', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (982, N'fdsd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (983, N'sdf', N'sfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (984, N'dfd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (985, N'dfsd', N'sdfgds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (986, N'tfffgg', N'hghbhbb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (987, N'fftcctf', N'yuguy', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (988, N'ftgyhujik', N'hbhnujikokok', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (989, N'dcbhji', N'uhikol', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (990, N'drftgyhu', N'huujiko', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (991, N'kljhkakakkakakskskskslwllwl', N'kskksksksksksksks', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (992, N'esdhl', N'ghkklkll', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (993, N'sdbjmkk', N'hvvjjll', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (994, N'yklknjbgftufyig', N'fhkklkl', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (995, N'xdtcg', N'vgihk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (996, N'vgbjlmk', N'vhijpk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (997, N'rsedyuji', N'fyipkp', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (998, N'crfug', N'yyhujik', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (999, N'chvhujij', N'fykplink', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1000, N'ftguygyugyh', N'gvyhhjij', 3, N'Male  ', 6, N'888@aol.com', N'5686667', CAST(0xED340B00 AS Date), N'"tyfgghihuh', N'njnjnjomjomjmjn', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1001, N'ftgy', N'bjjikikipk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1002, N'gygujij', N'gyhujij', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1003, N'cfvhnjm', N'gvhnkl', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1004, N'amitassdddddddd', N'aasssss', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1005, N'adtuguhilj', N'yguljl', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1006, N'shljg', N'ffjllgl', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1007, N'fgdf', N'dfgdfg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1008, N'dfdfq', N'dfgdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1009, N'grdgth', N'fh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1010, N'rgdchcgh', N'vnbjb', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1011, N'ftyf', N'vjbi', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1012, N'tfhcghcfg', N'bho', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1013, N'chjvj', N'bjhuk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1014, N'sdf', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1015, N'gfthf', N'jug', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 44)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1016, N'yvyij', N'yuoojik', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1017, N'ftgyji', N'vgbguvtnuj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1018, N'affffff', N'vhjljkjn', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1019, N'vlggn', N'bhnjm', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1020, N'fyglml', N'gjjkkl', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1021, N'aftergh', N'afgghhh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1022, N'dfggjjkkkkkkk', N'hujiijjjjjjj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1023, N'fghhjjjj', N'gyhyhjj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1024, N'yhybtvtvtgyhh', N'yyhyhyy', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1025, N'vjnkklko', N'jlklhlk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1026, N'cfvhkK', N'jkklkpo', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1027, N'asdfgh', N'tftfgtfgtfg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1028, N'dfgfdqd', N'dfgd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1029, N'fds', N'dfgd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1030, N'dfgfqdfgdf', N'dfgdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1031, N'sdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1032, N'sdf', N'sdf', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1033, N'Emily', N'Keongam', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1034, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1035, N'x', N'y', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1036, N'q', N'y', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1037, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1038, N'd', N'd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1039, N'John', N'Doe', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1040, N'Mary', N'Cooper', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1041, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1042, N'Eiko', N'Kaniya', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1043, N'Eiko', N'Kaniya', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1044, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1045, N'c', N'd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1046, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1047, N'c', N'd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1048, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1049, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1050, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1051, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1052, N'c', N'c', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1053, N'b', N'e', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1054, N'a', N'b', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1055, N'e', N'e', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1056, N'a', N'm', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1057, N'ab', N'b', 3, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
GO
print 'Processed 1000 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1058, N's', N'j', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1059, N'ccccghhhnnn', N'jj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1060, N'a', N'a', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1061, N'b', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1062, N'c', N'c', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1063, N'e', N'e', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1064, N'f', N'f', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1065, N'c', N'c', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1066, N'ftguhuhuhuh', N'ujujujij', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 91)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1067, N'gvgbyhuj', N'hnjjik', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1068, N'hhfjfjf', N'hjfjf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1069, N'rrhh fgdf', N'dfgdf DFDS', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1070, N'eee.   dddff ', N'jjsdfds dsf', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1071, N'vhvhjbh jhvvhjv vgnvnjvvjvyj khvkbhhkb ', N'vjvjv mvhjvhjv jvjvjvhj bjbjbjb ', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1072, N'dyyddt nvghvjv.  jgvjvj.   jhvjvjv.  ', N'gygjbjhbbj bjhhbjhb ', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1073, N'drftufyguhjh', N'cguji', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1074, N'ftftufutfutftg', N'ftgygygygyg', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1075, N'dddddddd', N'ddddkkdkkdkkdkdkkdkdkdkdkdkkd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 88)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1076, N'fdffgbjn', N'gjjll', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1077, N'x    fd  ftgyhuh', N'fh   vs vgs gg hh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1078, N'as as df gh jk ', N'cv  hjk kk   bnn', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1079, N'aaa', N'ghj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1080, N'asfg', N'jhgl', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1081, N'drftgyg', N'vgubhh', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1082, N'amit', N'gh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1083, N'amit', N'ghj', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1084, N'xrfyhjj', N'vhhjji', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1085, N'aaaaaaaa', N'aaaaaaaa', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1086, N'shr', N'shr', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1087, N'dgyh', N'hyghjkj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1088, N'sds', N'sdfds', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1089, N'sdfsd', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1090, N'sdfdsf', N'sdfsdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1091, N'cgvjnkl', N'ffhij', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1092, N'dffh', N'vgvhhjjkjjkjkj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1093, N'xrrrrr', N'ffgg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1094, N'sdfsd', N'sdfdsfd', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1095, N'cfvggh', N'fggjnkjk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1096, N'dffgf', N'ghhh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1097, N'dr', N'yjkkok', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1098, N'dfgd', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1099, N'fxfgvhbjn', N'gchhjj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1100, N'sdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1101, N'uhguhh', N'hihuiui', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1102, N'ggdgf', N'hfghvhg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1103, N'hfktfhgf', N'jvghgvh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1104, N'ftftu', N'fggyug', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1105, N'hgohjkh', N'hljkhjkl hj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1106, N'rucfvv fgg', N'ghh hhh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1107, N'tyy', N'hhj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1108, N'fghhg', N'hvmgg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1109, N'vtvt', N'bhhbjh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1110, N'ftgy', N'jg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1111, N'hdgjhgchgcj', N'hjb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1112, N'ftuuyguiygiyg', N'bbhkhku', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1113, N'ftyyf', N'gjjhgjyjhg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1114, N'uygu', N'jkkj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1115, N'abhinav', N'sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1116, N'Ben', N'Shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1117, N'ben', N'shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1118, N'Abhinav', N'Sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1119, N'Shane ', N'Toor', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1120, N'gf  hghg  jgh   ', N'uuu   jhjjh k h h ', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1121, N'jjj', N'kkkk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1122, N'hhh', N'ii', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1123, N'bhh', N'jkk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1124, N'gfdgff gfgfh', N'jb ', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1125, N'ddffff', N'yghhjj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1126, N'aaa. aa  aaa', N'zggh aa aa ', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1127, N'as  AS  fgh a', N'gf hj kjh hg bh njk ', 1, N'Male  ', 45, N'ffggg@hj.com', N'556778999009', CAST(0xF1340B00 AS Date), N'"kgvkgvyubhi', N'gbhonpjipjij', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1128, N'df gf hg hg ', N'ghh jk hjk jkl bhg hjklmnb ', 1, N'Male  ', 64, N'tt@hj.com', N'456676767787', CAST(0xF1340B00 AS Date), N'"cfycfftfyygyguvgggygy', N'gyguhu', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1129, N'ftfygyh', N'gvhhij', NULL, N'Male  ', 0, N'', N'', CAST(0xF1340B00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1130, N'                                                  ', N'                                                  ', NULL, N'Male  ', 0, N'', N'', CAST(0xF1340B00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1131, N'hujj', N'kkwkwk', NULL, N'Female', 0, N'', N'', CAST(0xF1340B00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1132, N'ftftgtbybyg', N'ybynybyhybyb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1133, N'Mary', N'Cooper', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1134, N'ana', N'm', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1135, N'Mary', N'Cc', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1136, N'Ben', N'Shalom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1137, N'Abhinav', N'Sehgal', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1138, N'Shane', N'Toor', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1139, N'Jon', N'G', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1140, N'f', N'y', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1141, N'abn', N'sfdgfhhjhj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 92)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1142, N'sdfs', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1143, N'ytdyddty', N'jgjhg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1144, N'hggfhfg', N'khbbjkhlj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1145, N'ufygyuuyg', N'kugkjhkhu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1146, N'ftyfuugy', N'jkhjh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1147, N'hvjvy', N'bkhkhjk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1148, N'guug', N'bkbj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1149, N'yitgijni', N'ljjk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1150, N'gcfgch', N'jbjhb', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1151, N'sdf', N'sfddsf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1152, N'fhhgfvu', N'kjbjii', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1153, N'hcggvh', N'jbhjbk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1154, N'gfng', N'jhh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1155, N'gfdfd', N'jghgjug', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1156, N'hffgfh', N'jhgg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1157, N'Mary', N'Cooper', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1158, N'fj', N'khk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
GO
print 'Processed 1100 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1159, N'gjhhk', N'lnjjiljioj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1160, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1161, N'huid', N'ljd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1162, N'ghvwsv', N'sa  yuagyua ', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1163, N'wf', N'iyagiys', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1164, N'dydytf', N'yhy', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1165, N'ufuyuy', N'bjhk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1166, N'hvvhvu', N'ihkhj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1167, N'hgffh', N'jhgjhg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1168, N'hfgfgh', N'bugi', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1169, N'gfvjhv', N'bjbjk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1170, N'sdfd', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1171, N'ugvvg', N'ihbjih', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1172, N'John', N'Doe', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1173, N'vhhgv', N'hbkhh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1174, N'hvgjgv', N'khuh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1175, N'John', N'Doe', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1176, N'hfgfgj', N'jhgukh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1177, N'ydtyfytf', N'ghjuhk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1178, N'jhgghj', N'kjhkih', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1179, N'hhftihoih', N'kuhkih', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1180, N'gnnhhj', N'jbj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1181, N'f', N'mb', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1182, N'vjhgju', N'jmbkjh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1183, N'yfrf', N'vy', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1184, N'John', N'Doe', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1185, N'Mary', N'Cooper', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1186, N'Amy', N'A Tsang', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1187, N'Jon', N'Gornstein', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1188, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1189, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1190, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1191, N'e', N'e', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1192, N'f', N'f', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1193, N'Ana', N'Murphy', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1194, N'Meng', N'L', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1195, N'Ming', N'Y', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1196, N'Eiko', N'G', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1197, N'y', N'u', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1198, N'hghfghh', N'hmmhgkhjkjk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1199, N'nnhjg', N'kuhuhku', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1200, N'gfcgfc', N'hjg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1201, N'cgfcgt', N'jhg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1202, N'fth', N'jugug', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1203, N'vnhv', N'bmhkj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1204, N'abc', N'def', 21, N'Male  ', 25, N'abc@gmail.com', N'777644445', CAST(0x88340B00 AS Date), N'"Dfdsfdsf', N'Dfdsfdsfdsfdsfsf', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1205, N'hyjughj', N'gjg', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1206, N'qwwqee', N'wqwqw', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 93)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1207, N'a', N'b', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1208, N'c', N'cc', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1209, N'gqfghgq', N'fghfg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1210, N'sdfd', N'sdfd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1211, N'sdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1212, N'sdf', N'sdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1213, N'dfg', N'dfgfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1214, N'sdf', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1215, N'df', N'dsfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1216, N'sdf', N'sdfds', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1217, N'sdf', N'wdf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1218, N's', N'd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1219, N'xcv', N'xcv', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1220, N'd', N'f', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1221, N'f', N'd', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1222, N'sdf', N'sdfd', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1223, N'chghc', N'kjhnjk', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1224, N'hgvjgjvg', N'hkjhkjji', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1225, N'fhvh', N'honk', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1226, N'hfgvg', N'hjj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1227, N'hcgghf', N'bhjkhb', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1228, N'hjj', N'kk', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1229, N'g', N'i', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1230, N'h', N'j', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1231, N'hhji', N'ji', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1232, N'jhg', N'ij', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1233, N'gvh', N'gjh', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1234, N'g', N'j', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1235, N'hgfhgsa', N'bvsbx', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1236, N'fhf', N'hmghjgj', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1237, N'mhgj', N'jkhh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1238, N'sc', N'jhgjhg', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1239, N'Mary', N'Cooper', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1240, N'Amy', N'Tsang', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1241, N'Jon', N'Gornstein', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1242, N'Jon', N'Gornstein', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1243, N'John', N'Dawson', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1244, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1245, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1246, N'dfg', N'sdgf', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1247, N'f', N'sdfd', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1248, N'sdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1249, N'gfd', N'dfgdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1250, N'sdf', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1251, N'qwerwer', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1252, N'aq', N'df', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1253, N'sdf', N'sdfs', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1254, N'sdfsdfd', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1255, N'sdf', N'sdfds', 2, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1256, N'a', N's', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1257, N's', N'sd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1258, N'sdf', N'sdfds', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1259, N'sad', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
GO
print 'Processed 1200 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1260, N'sdf', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1261, N'd', N'f', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1262, N'ascXCV', N'ERT', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1263, N'D', N'D', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1264, N'F', N'G', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1265, N's', N'sd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1266, N'v', N'c', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1267, N'dgf', N'dfg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1268, N'df', N'df', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1269, N'df', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1270, N'dx', N'dfg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1271, N'sdf', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1272, N'sdf', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1273, N'sdf', N'sdfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1274, N'df', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1275, N'John', N'Doe', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1276, N's', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1277, N'sdf', N'sdfd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1278, N'ytdtdytf', N'gfyf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1279, N'uygu', N'yb', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1280, N'Jon', N'Gornstein', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1281, N'Amy', N'Tsang', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1282, N'Ana', N'Murphy', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1283, N'Ben', N'S', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1284, N'Mary', N'Cooper', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1285, N'fut', N'inkin', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1286, N'gjg', N'ugiuh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1287, N'utuyg', N'jv', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1288, N'yuj', N'biugou', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1289, N'kuhihkhi', N'kuhih', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1290, N'gjuguihui', N'kuhu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1291, N'giuhiihkiu', N'kuhkoi', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1292, N'guikuh', N'ubh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 96)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1293, N'Ana', N'Murphy', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1294, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1295, N'Amy', N'Tsang', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1296, N'fdg', N'dfgfd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1297, N'm', N's', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1298, N'df', N'f', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1299, N'sdf', N'sfsd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1300, N'Amy', N'Tsang', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1301, N'John', N'Seller', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1302, N'dfgf', N'fgd', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1303, N'gfgh', N'hjgukh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1304, N'hfghg', N'kjhhj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1305, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1306, N'Jon', N'Gornstein', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1307, N'Quan', N'Lieu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1308, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1309, N'Persona', N'Global', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1310, N'Ben', N'Solom', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1311, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1312, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1313, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1314, N'Ana', N'Murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1315, N'Quan', N'Lieu', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1316, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1317, N'xxx', N'fff', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1318, N'nhgjhghjg', N'jgmgkjg', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1319, N'X', N'Y', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1320, N'y', N'uuu', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1321, N'y', N'x', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1322, N'sss', N'uuu', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1323, N'yyy', N'cgcc', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1324, N'y', N'y', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1325, N'Mary', N'C', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1326, N'Y', N'Z', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1327, N'W', N'F', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1328, N'u', N'u', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1329, N'YYY', N'GGG ', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1330, N'Y', N'D', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1331, N'y', N'h', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1332, N'Y', N'X', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1333, N'y', N'u', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1334, N'y', N'y', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1335, N'y', N'y', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1336, N'y', N'ddd', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1337, N'y', N'd', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1338, N'rrrr', N'ddsssd', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1339, N'ygj', N'hj', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1340, N'jgh', N'hjn', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1341, N'gcvg', N'bjknjk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1342, N'hggguk', N'kjlhhjlk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1343, N'jfg', N'ghjghj', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1344, N'ugg', N'ohg', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1345, N'uj', N'iou', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1346, N'm', N'k', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1347, N'tdr', N'hfy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1348, N'gxf', N'nhg', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1349, N'Mary', N'Cooper', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1350, N'Mary', N'Cooper', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1351, N'John', N'Doe', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1352, N'Eiko', N'Gornstein', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1353, N'gcfh', N'ghjghb', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1354, N'dgfu', N'jgh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1355, N'vj', N'kh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1356, N'ch', N'jkb', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1357, N'hcg', N'gkh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1358, N'd', N'khkhjk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1359, N'gcfhchfchg', N'bhbjkoi', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1360, N'hdgchhgc', N'jvbkbu', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
GO
print 'Processed 1300 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1361, N'fhchcgh', N'kjh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1362, N'fd', N'jvh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1363, N'hggf', N'kjh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1364, N'dyfyfigujhj', N'vhgyg', 2, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1365, N'Ben', N'Shalom', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1366, N'uhguuyg', N'jkhjhoj', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1367, N'fufguvu', N'gugui', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1368, N'vjkghjhjg', N'jhkhjk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1369, N'Mary', N'Cooper', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1370, N'John', N'Doe', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1371, N'Amy', N'Tsang', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1372, N'Amy', N'Tsang', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1373, N'amy', N'tsang', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1374, N'quan', N'lieu', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1375, N'eiko', N'k', 5, N'Female', 0, N'', N'', CAST(0x06350B00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1376, N'ana', N'murphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1377, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'4156919718', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1378, N'a', N'b', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1379, N'a', N'b', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 78)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1380, N'ugh', N'hjk', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1381, N'hfhtfvugv', N'ibuhh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1382, N'hdt', N'hij', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1383, N'guvvuvuhv', N'khij', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1384, N'ae', N'ae', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1385, N'dfg', N'dfgf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1386, N'dsf', N'sdf', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1387, N'dfgd', N'sdfds', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1388, N'Bill', N'Smith', 21, N'Male  ', 48, N'', N'4153316766', CAST(0x06350B00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1389, N'Sarah', N'Wayne', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1390, N'Quan', N'Lieu', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1391, N'William', N'Zhang', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1392, N'gufhuvvhjvhk', N'jihjkh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1393, N'William', N'Zhang', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1394, N'Sophie', N'Li', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1395, N'Franco', N'Li', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1396, N'susan', N'Goa', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1397, N'susan', N'goa', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1398, N'Peter', N'Gornstein', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1399, N'tkk', N'ghju', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1400, N'dgffdgfd', N'fghvhh', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1401, N'John', N'Smith', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1402, N'Robert', N'Rinu', 23, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1403, N'Theresa', N'Ming', 23, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1404, N'Octaty', N'Erto', 23, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1405, N'Janet', N'Rorn', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1406, N'Ron', N'Macurt', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1407, N'Eric', N'Sample', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1408, N'Sandra', N'Smith', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1409, N'Answer', N'center', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1410, N'Answer', N'Center', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1411, N'Ron', N'Vance', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1412, N'Ron', N'SQLLite', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1413, N'Ana', N'SqlLite', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1414, N'Quan', N'sqllite', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1415, N'Mary', N'X', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1416, N'Mary', N'Cooper', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1417, N'x', N'y', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1418, N'y', N'z', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1419, N'Shaun ', N'Williams', NULL, N'Male  ', 49, N'', N'49015798282', CAST(0x16350B00 AS Date), N'"London, UK', N'This will be a discussion focused on volume of photocopying', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1420, N'Jim', N'Jones', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1421, N'Rah', N'Gid', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1422, N'Ra', N'Gi', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1423, N'b', N'j', 5, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1424, N'b', N'b', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1425, N'Eiko', N'Kaniya', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1426, N'TTT', N'YYY', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1427, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1428, N'amy', N'tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1429, N'Ben', N'Shalom', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1430, N'Ben', N'Shalom A', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1431, N'Bob ', N'X', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1432, N'sdfdsdfd', N'sds', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1433, N'Ben', N'Shalom C', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1434, N'aa', N'aa', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1435, N'sdf', N'sdf', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1436, N'a', N'a', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1437, N'sds', N'sdf', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1438, N'hj', N'joi', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1439, N'fg', N'sdfs', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1440, N'xcv', N'XCV', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1441, N'ffnn', N'hhh', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1442, N'f', N'ii', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1443, N'dj', N'i', 1, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1444, N'GNF', N'SDF', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1445, N'DFG', N'DFGFD', 1, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 47)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1446, N'Will', N'Smith', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1447, N'John', N'Muray', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1448, N'Ann', N'Mckurt', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1449, N'Quan', N'Center', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1450, N'ben', N'salon', 21, N'Male  ', 34, N'Ben@mobileprogramming.com', N'971630656', CAST(0x4F0A0B00 AS Date), N'"America', N'Personaglobal', 100)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1451, N'Eric', N'Freese', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1452, N'Rick', N'Lam', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1453, N'Grete', N'Springs', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1454, N'Phil', N'Taylor', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1455, N'Amy', N'Tsang', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1456, N'Martin', N'Wright', 21, N'Male  ', 35, N'Martin@company.com', N'', CAST(0x1B350B00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1457, N'John', N'Doe', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1458, N'Mary', N'Smith', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1459, N'?????????', N'?????????', 21, N'Male  ', 32, N'Ben@1.com', N'8183955065', CAST(0x29350B00 AS Date), N'"???????????? ??????', N'???', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1460, N'Ben', N'Test', 21, N'Male  ', 0, N'', N'', CAST(0x29350B00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1461, N'b', N's', 21, N'Male  ', 0, N'', N'', CAST(0x29350B00 AS Date), N'"', N'', 94)
GO
print 'Processed 1400 total records'
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1462, N'b', N'b', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1463, N'b', N'b', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1464, N'X', N'Y', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1465, N'ftfhg', N'jkghjk', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1466, N'R', N'G', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1467, N'b', N'b', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1468, N'b', N'b', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1469, N'chghc', N'hukhjk', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1470, N'asdf', N'hgdr', 21, N'Female', 34, N'Su@vu.com', N'8438655', CAST(0x2B350B00 AS Date), N'"Yfffghj', N'Guhgjh', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1471, N'Dive', N'Diver', 21, N'Male  ', 56, N'dive3452@gmail.com', N'4087561122', CAST(0x2B350B00 AS Date), N'"1 Infinite Loop', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1472, N'a', N'a', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1473, N'Mary', N'Cooper', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1474, N'John ', N'Doe', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1475, N'a', N'a', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1476, N'dfterr', N'jkll', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1477, N'ukyfsuysfyus', N'ihsgie', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1478, N'Sabina', N'Steinberg', 21, N'Female', 0, N'', N'', CAST(0x2F350B00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1479, N'Quan', N'Lieu', 21, N'Female', 0, N'', N'', CAST(0x2F350B00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1480, N'Quan', N'Liew', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1481, N'Kristina', N'P', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1482, N'Jacob', N'Smith', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1483, N'Amy', N'Tsang', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1484, N'Ethan', N'Lee', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1485, N'William', N'Richardson', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1486, N'Anthony', N'Bennett', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1487, N'test', N'testln', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1488, N'testp', N'testp', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1489, N'Lisa', N'Wayne', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1490, N'Diego', N'Rodriguez', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1491, N'garance', N'clement', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 114)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1492, N'Jurg', N'klienstein', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1493, N'garance', N'clement', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 114)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1494, N'veronique', N'clement', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 114)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1495, N'dddddd', N'hhhhhhh', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 114)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1496, N'Ana', N'Muphy', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1497, N'Mary', N'Cooper', NULL, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1498, N'Thomas', N'Lee', NULL, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 94)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1499, N'ana', N'murphy', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1500, N'test', N'testln', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1501, N'other', N'ln', 21, N'Female', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1502, N'test', N'testln', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 98)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1503, N'sr', N'sdfd', 21, N'Male  ', 22, N'mkss@gmail.com', N'2222222222', CAST(0x39350B00 AS Date), N'"Weqw', N'Qwew', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1504, N'dfgds', N'sdf', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
INSERT [dbo].[PC_MobileListener] ([SurveyUserID], [FirstName], [LastName], [ProductID], [Gender], [Age], [Email], [Phone], [SurveyDate], [Address], [Comments], [RegID]) VALUES (1505, N'Ben', N'Shalom', 21, N'Male  ', 0, N'', N'', CAST(0x5B950A00 AS Date), N'"', N'', 101)
SET IDENTITY_INSERT [dbo].[PC_MobileListener] OFF
/****** Object:  StoredProcedure [dbo].[prc_GeneralFeedback_Update]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_GeneralFeedback_Update]
@ID int,
@LanguageID int,
@Feedback varchar(max)

as
begin
	update PC_MobileGeneralFeedback set generalfeedback= @Feedback,LanguageID=@LanguageID
	where GeneralFeedID=@ID
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_GeneralFeedback_Select_ByMatrixValue_admin]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_GeneralFeedback_Select_ByMatrixValue_admin]
@MatrixValue tinyint

as
begin
	
select gFeed.GeneralFeedID,gfeed.MatrixValue,gFeed.LanguageID,lang.LanguageName,gFeed.GeneralFeedback 
from PC_MobileGeneralFeedback gFeed inner join PC_MobileLanguage lang on gFeed.LanguageID=lang.LanguageID
where MatrixValue=@MatrixValue
end
GO
/****** Object:  StoredProcedure [dbo].[prc_GeneralFeedback_Select_ByMatrixValue]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_GeneralFeedback_Select_ByMatrixValue]
@MatrixValue tinyint,
@RegID int
as
begin
	
select gFeed.GeneralFeedID,gfeed.MatrixValue,gFeed.LanguageID,lang.LanguageName,gFeed.GeneralFeedback 
from PC_MobileGeneralFeedback gFeed inner join PC_MobileLanguage lang on gFeed.LanguageID=lang.LanguageID
where MatrixValue=@MatrixValue and gFeed.LanguageID=(select languageid from PC_MobileUser where RegID=@RegID)
end
GO
/****** Object:  StoredProcedure [dbo].[prc_GeneralFeedback_INS]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[prc_GeneralFeedback_INS]
@MatrixPosition tinyint,
@LanguageID int,
@Feedback varchar(max)
as
begin
	insert into PC_MobileGeneralFeedback values(@MatrixPosition,@LanguageID,@Feedback)
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_GeneralFeedback_DeleteByID]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[prc_GeneralFeedback_DeleteByID]
@ID int

as
begin
	delete from PC_MobileGeneralFeedback where GeneralFeedID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Company_Select_All]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Company_Select_All]


as
begin
	select * from PC_MobileCompany
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Company_INS]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Company_INS]
@CompanyName varchar(100)

as
begin
	insert into PC_MobileCompany values(@CompanyName)
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  Table [dbo].[PC_MobileProductUser]    Script Date: 01/24/2012 13:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PC_MobileProductUser](
	[ProductUserID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[RegID] [int] NOT NULL,
 CONSTRAINT [PK_Product_User_Relation] PRIMARY KEY CLUSTERED 
(
	[ProductUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PC_MobileProductUser] ON
INSERT [dbo].[PC_MobileProductUser] ([ProductUserID], [ProductID], [RegID]) VALUES (2385, 3, 23)
INSERT [dbo].[PC_MobileProductUser] ([ProductUserID], [ProductID], [RegID]) VALUES (2386, 1, 24)
INSERT [dbo].[PC_MobileProductUser] ([ProductUserID], [ProductID], [RegID]) VALUES (2387, 1, 25)
INSERT [dbo].[PC_MobileProductUser] ([ProductUserID], [ProductID], [RegID]) VALUES (2390, 1, 30)
INSERT [dbo].[PC_MobileProductUser] ([ProductUserID], [ProductID], [RegID]) VALUES (2391, 5, 30)
INSERT [dbo].[PC_MobileProductUser] ([ProductUserID], [ProductID], [RegID]) VALUES (2392, 2, 31)
INSERT [dbo].[PC_MobileProductUser] ([ProductUserID], [ProductID], [RegID]) VALUES (2393, 3, 31)
SET IDENTITY_INSERT [dbo].[PC_MobileProductUser] OFF
/****** Object:  StoredProcedure [dbo].[prc_ProductList_RegID]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_ProductList_RegID] 
@RegID int
as
SELECT     dbo.PC_MobileUser.Reg_ID, dbo.PC_MobileProductFeedback.ProductName, dbo.PC_MobileProductFeedback.ProductID
FROM       dbo.PC_MobileUser INNER JOIN
           dbo.PC_MobileProductUserRelation ON dbo.PC_User.Reg_ID = dbo.PC_MobileProductUserRelation.Reg_ID INNER JOIN
           dbo.PC_MobileProductFeedback ON dbo.PC_MobileProductUserRelation.ProductID = dbo.PC_MobileProductFeedback.ProductID
where dbo.PC_MobileUser.Reg_ID=@RegID
GO
/****** Object:  StoredProcedure [dbo].[prc_ProductFeedback_Update]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_ProductFeedback_Update]
@ID int,
--@ProductID int,
@Feedback varchar(max),
@MatrixPosition char(2),
@LanguageID int
as
begin
	update PC_MobileProductFeedback set feedback= @Feedback,MatrixPosition=@MatrixPosition,LanguageID=@LanguageID
	where ID=@ID
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_ProductFeedback_Select_ByProductID]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_ProductFeedback_Select_ByProductID]
@ProductID int,
@RegID int
as
begin
	
select pdfeed.ID,pdfeed.ProductID,pd.ProductName,pdfeed.Feedback,pdfeed.LanguageID,lang.LanguageName 
from PC_MobileProductFeedback pdfeed inner join PC_MobileProduct pd on
pdfeed.ProductID=pd.ProductID inner join PC_MobileLanguage lang on
pdfeed.LanguageID=lang.LanguageID where pdfeed.ProductID=@ProductID
and pdfeed.LanguageID=(select languageid from PC_MobileUser where RegID=@RegID)
end
GO
/****** Object:  StoredProcedure [dbo].[prc_ProductFeedback_Select_ByMatrixValue]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_ProductFeedback_Select_ByMatrixValue]
@MatrixValue int,
@RegID int
as
begin
	
select pdfeed.MatrixPosition,pdfeed.ID,pdfeed.ProductID,pd.ProductName,pdfeed.Feedback,pdfeed.LanguageID,lang.LanguageName 
from PC_MobileProductFeedback pdfeed inner join PC_MobileProduct pd on
pdfeed.ProductID=pd.ProductID inner join PC_MobileLanguage lang on
pdfeed.LanguageID=lang.LanguageID where pdfeed.MatrixPosition=@MatrixValue
 and pdfeed.LanguageID=(select languageid from PC_MobileUser where RegID=@RegID)
end
GO
/****** Object:  StoredProcedure [dbo].[prc_ProductFeedback_INS]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_ProductFeedback_INS]
@ProductID int,
@Feedback varchar(max),
@MatrixPosition char(2),
@LanguageID int,
@FeedbackNo tinyint=null
as
begin
	insert into PC_MobileProductFeedback values(@ProductID,@Feedback,@MatrixPosition,@LanguageID)
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_ProductFeedback_DeleteByID]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_ProductFeedback_DeleteByID]
@ID int

as
begin
	delete from PC_MobileProductFeedback where ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[prc_ProductFeedback_ByProductID]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_ProductFeedback_ByProductID]
@ProductID int

as
begin
	select fd.id,fd.Feedback,fd.MatrixPosition,fd.LanguageID,lan.LanguageName from PC_MobileProductFeedback fd inner join
	PC_MobileLanguage lan on fd.LanguageID=lan.LanguageID
	where productid=@ProductID
end
GO
/****** Object:  StoredProcedure [dbo].[prc_ProductANDGeneralFeedback_Select_ByMValueANDProduct]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_ProductANDGeneralFeedback_Select_ByMValueANDProduct]
@MatrixValue tinyint,
@ProductID int,
@RegID int
as
begin
	
select gFeed.GeneralFeedID,gfeed.MatrixValue,gFeed.LanguageID,lang.LanguageName,gFeed.GeneralFeedback from PC_MobileGeneralFeedback gFeed
inner join PC_MobileLanguage lang on gFeed.LanguageID=lang.LanguageID
where MatrixValue=@MatrixValue and gFeed.LanguageID=(select languageid from PC_MobileUser where RegID=@RegID)

select * from 
(
select pdfeed.ID,pdfeed.ProductID,pd.ProductName,pdfeed.Feedback,pdfeed.LanguageID,lang.LanguageName,
pdfeed.MatrixPosition as ProductMatrixValue 
from PC_MobileProductFeedback pdfeed inner join PC_MobileProduct pd on
pdfeed.ProductID=pd.ProductID inner join PC_MobileLanguage lang on
pdfeed.LanguageID=lang.LanguageID where pdfeed.ProductID=@ProductID and pdfeed.MatrixPosition=@MatrixValue
and pdfeed.LanguageID=(select languageid from PC_MobileUser where RegID=@RegID)

)a where id in
(select max(ID) from PC_MobileProductFeedback where ProductID=@ProductID
and LanguageID=(select languageid from PC_MobileUser where RegID=@RegID)
and MatrixPosition=@MatrixValue)

end
GO
/****** Object:  StoredProcedure [dbo].[prc_User_SelectAll]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_User_SelectAll]

@searchText varchar(250)=''

as

begin
if @searchText=''
	begin
		select u.RegID,u.USERID,u.FirstName,u.lastname,c.CountryID,c.CountryName,u.Gender,
		u.CreatedDate,u.IsEnabled from 
		PC_MobileUser u inner join PC_MobileCountry c on u.CountryID=c.CountryID where IsDeleted=0
	end
else
	begin
		select u.RegID,u.USERID,u.FirstName,u.lastname,c.CountryID,c.CountryName,u.Gender,u.CreatedDate,u.IsEnabled from 
		PC_MobileUser u inner join PC_MobileCountry c on u.CountryID=c.CountryID where IsDeleted=0 and 
		(u.FirstName like '%'+@searchText+'%' or u.lastname like '%'+@searchText+'%' or u.USERID like '%'+@searchText+'%')
	end
end
GO
/****** Object:  StoredProcedure [dbo].[prc_User_Register]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_User_Register]
@UserID varchar(50),
@FirstName varchar(50),
@LastName varchar(50),
@Password varchar(20),
@CountryID int,
@CompanyID int,
@LangaugeID int,
--@MatrixValue tinyint,
@EmoValue float,
@DomValue float,
@Gender varchar(6),
@InitDate datetime=null,
@ExpDate datetime=null
--@ProductIds varchar(200)
as

begin
if exists(select regid from PC_MobileUser where USERID=@UserID and Isdeleted!=1)
begin
	
	return -1
	
 end
 else
	--insert into PC_MobileUser (userid,FirstName,LastName,password,countryid,CompanyID,LanguageID,matrixvalue,Gender,AccountInitDate,AccountExpDate)  
	--values(@UserID,@FirstName,@LastName,@Password,@CountryID,@CompanyID,@LangaugeID,@MatrixValue,@Gender,@InitDate,@ExpDate)
	
	
	insert into PC_MobileUser (userid,FirstName,LastName,password,countryid,CompanyID,LanguageID,Emotional,Dominance,Gender,AccountInitDate,AccountExpDate)  
	values(@UserID,@FirstName,@LastName,@Password,@CountryID,@CompanyID,@LangaugeID,@EmoValue,@DomValue,@Gender,@InitDate,@ExpDate)
	
	
	--Declare @RegID int
	--SELECT @RegID=@@IDENTITY
	
	--DECLARE @pos integer = 1,	@previous_pos integer = 0,		@value	varchar(50)
	--WHILE @pos > 0
 --	BEGIN
 --		SET @pos = CHARINDEX(',',@ProductIds,@previous_pos+1)
 --		IF @pos > 0
 --		BEGIN
 --			SET @value = SUBSTRING(@ProductIds,@previous_pos+1,@pos-@previous_pos-1)
 --			INSERT INTO PC_MobileProductUser (ProductID, RegID)VALUES (@value,@RegID)
 --			SET @previous_pos = @pos
 --		END
 --	END
 --	IF @previous_pos < LEN(@ProductIds)
 --	BEGIN
 --			SET @value = SUBSTRING(@ProductIds,@previous_pos+1,LEN(@ProductIds))
 --			INSERT INTO PC_MobileProductUser (ProductID, RegID)VALUES (@value,@RegID)
 --	END



	
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
	
	
	
end
GO
/****** Object:  StoredProcedure [dbo].[prc_User_ForgotPassword]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_User_ForgotPassword]
@UserID varchar(50)

as
begin
	select regid,password from PC_MobileUser where IsEnabled=1 and IsDeleted=0 and UserID COLLATE Latin1_General_CS_AS=@UserID
end
GO
/****** Object:  StoredProcedure [dbo].[prc_User_EnableDisable]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_User_EnableDisable]
@RegID int,
@IsEnable bit
as
begin
	update PC_MobileUser set  IsEnabled=@IsEnable where RegID=@RegID
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_User_delete]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_User_delete]

@UserID varchar(50)
as

begin
update PC_MobileUser set IsDeleted=1 where RegID=@UserID
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_User_Authenticate]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_User_Authenticate] 

@UserID varchar(50),
@Password varchar(20),
@RegID int=0

as
declare @emoValue float
declare @domValue float
declare @CompanyID int
declare @FirstName varchar(250)
declare @LastName varchar(250)

if Exists(select regid from PC_MobileUser where USERID =@UserID and password COLLATE 
	Latin1_General_CS_AS=@Password and IsDeleted=0 and IsEnabled=1 and 
	(accountinitdate is null or accountinitdate<=getdate()) 
	and (accountexpdate is null or accountexpdate>=getdate()))
	begin
		select @RegID=regid,@emoValue=Emotional,@domValue=Dominance,@CompanyID=CompanyID,@FirstName=FirstName,@LastName=LastName from PC_MobileUser where USERID =@UserID and password COLLATE Latin1_General_CS_AS=@Password and IsDeleted=0
		select @RegID as RegID,@emoValue as Emotional,@domValue as Dominance,@CompanyID as CompanyID,(@FirstName+' '+isnull(@LastName,'')) as UserName
	end
else
	begin
	select 0
	end
GO
/****** Object:  StoredProcedure [dbo].[prc_Product_Select_ByRegID]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Product_Select_ByRegID]
@RegID int

as
begin
--u.Reg_ID,u.user_id,
	select p.productid,p.productname from PC_MobileUser u inner join PC_MobileProductUser pu 
on u.RegID=pu.regid inner join PC_MobileProduct p on p.ProductID=pu.Productid
where u.RegID=@RegID
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Contact_DeleteByID]    Script Date: 01/24/2012 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Contact_DeleteByID]
@ID int,
@RegID int

as
begin
	delete from PC_MobileListener where SurveyUserID=@ID and RegID=@RegID
	IF @@ERROR <> 0
			return 0
		ELSE
			return 1
end
GO
/****** Object:  StoredProcedure [dbo].[prc_SurveyUser_Select_ByRegID]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_SurveyUser_Select_ByRegID]
@RegID int

as
begin

	select SurveyUserID,(FirstName+' '+LastName) as UserName from PC_MobileListener
	where RegID=@RegID
end
GO
/****** Object:  StoredProcedure [dbo].[prc_SurveyUser_Select_ById]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_SurveyUser_Select_ById]
@SurveyUserID int

as
begin

	select * from PC_MobileListener where SurveyUserID=@SurveyUserID
end
GO
/****** Object:  StoredProcedure [dbo].[prc_SurveyUser_Select_All]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_SurveyUser_Select_All]


as
begin

	select SurveyUserID,(FirstName+' '+LastName) as UserName from PC_MobileListener
end
GO
/****** Object:  StoredProcedure [dbo].[prc_SurveyUser_Insert]    Script Date: 01/24/2012 13:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_SurveyUser_Insert]
@FirstName varchar(50),
@LastName varchar(50),
@ProductID int,
@Gender char(6),
@Age tinyint=null,
@Email varchar(50)=null,
@Phone varchar(12)=null,
@SurveyDate date=null,
@Address varchar(250)=null,
@Comments varchar(250)=null,
@RegID int
as

IF @ProductID=0
	BEGIN
		SET @ProductID=NULL
	END
INSERT INTO [PCMobileGameplan].[dbo].[PC_MobileListener]
           (
           [FirstName]
           ,[LastName]
           ,[ProductID]
           ,[Gender]
           ,[Age]
           ,[Email]
           ,[Phone]
           ,[SurveyDate]
           ,[Address]
           ,[Comments]
           ,RegID)
     VALUES
           (@FirstName,@LastName,@ProductID,@Gender,@Age,@Email,@Phone,@SurveyDate,
           @Address,@Comments,@RegID)
           
           IF @@ERROR <> 0
			return 0
		ELSE
			return 1
GO
/****** Object:  Default [DF_PC_Admin_IsDeleted]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileAdmin] ADD  CONSTRAINT [DF_PC_Admin_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_PC_Admin_CreatedDate]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileAdmin] ADD  CONSTRAINT [DF_PC_Admin_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_PC_Admin_IsSuperAdmin]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileAdmin] ADD  CONSTRAINT [DF_PC_Admin_IsSuperAdmin]  DEFAULT ((0)) FOR [IsSuperAdmin]
GO
/****** Object:  Default [DF_PC_MobileUser_IsEnabled]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileUser] ADD  CONSTRAINT [DF_PC_MobileUser_IsEnabled]  DEFAULT ((1)) FOR [IsEnabled]
GO
/****** Object:  Default [DF_tblUsers_IsDeleted]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileUser] ADD  CONSTRAINT [DF_tblUsers_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_tblUsers_CreatedDate]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileUser] ADD  CONSTRAINT [DF_tblUsers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  ForeignKey [FK_GenFeed_Language]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileGeneralFeedback]  WITH CHECK ADD  CONSTRAINT [FK_GenFeed_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[PC_MobileLanguage] ([LanguageID])
GO
ALTER TABLE [dbo].[PC_MobileGeneralFeedback] CHECK CONSTRAINT [FK_GenFeed_Language]
GO
/****** Object:  ForeignKey [FK_Listner_User]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileListener]  WITH CHECK ADD  CONSTRAINT [FK_Listner_User] FOREIGN KEY([RegID])
REFERENCES [dbo].[PC_MobileUser] ([RegID])
GO
ALTER TABLE [dbo].[PC_MobileListener] CHECK CONSTRAINT [FK_Listner_User]
GO
/****** Object:  ForeignKey [FK_Survey_Userdetails_Product]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileListener]  WITH CHECK ADD  CONSTRAINT [FK_Survey_Userdetails_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PC_MobileProduct] ([ProductID])
GO
ALTER TABLE [dbo].[PC_MobileListener] CHECK CONSTRAINT [FK_Survey_Userdetails_Product]
GO
/****** Object:  ForeignKey [FK_Product_Company_Relation_tblProduct_Feedback]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileProductCompany]  WITH CHECK ADD  CONSTRAINT [FK_Product_Company_Relation_tblProduct_Feedback] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PC_MobileProduct] ([ProductID])
GO
ALTER TABLE [dbo].[PC_MobileProductCompany] CHECK CONSTRAINT [FK_Product_Company_Relation_tblProduct_Feedback]
GO
/****** Object:  ForeignKey [FK_PrdFeedback_Product]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileProductFeedback]  WITH CHECK ADD  CONSTRAINT [FK_PrdFeedback_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PC_MobileProduct] ([ProductID])
GO
ALTER TABLE [dbo].[PC_MobileProductFeedback] CHECK CONSTRAINT [FK_PrdFeedback_Product]
GO
/****** Object:  ForeignKey [FK_ProdFeedback_Language]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileProductFeedback]  WITH CHECK ADD  CONSTRAINT [FK_ProdFeedback_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[PC_MobileLanguage] ([LanguageID])
GO
ALTER TABLE [dbo].[PC_MobileProductFeedback] CHECK CONSTRAINT [FK_ProdFeedback_Language]
GO
/****** Object:  ForeignKey [FK_Product_User_Relation_tblProduct_Feedback]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileProductUser]  WITH CHECK ADD  CONSTRAINT [FK_Product_User_Relation_tblProduct_Feedback] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PC_MobileProduct] ([ProductID])
GO
ALTER TABLE [dbo].[PC_MobileProductUser] CHECK CONSTRAINT [FK_Product_User_Relation_tblProduct_Feedback]
GO
/****** Object:  ForeignKey [FK_Product_User_Relation_tblUsers]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileProductUser]  WITH CHECK ADD  CONSTRAINT [FK_Product_User_Relation_tblUsers] FOREIGN KEY([RegID])
REFERENCES [dbo].[PC_MobileUser] ([RegID])
GO
ALTER TABLE [dbo].[PC_MobileProductUser] CHECK CONSTRAINT [FK_Product_User_Relation_tblUsers]
GO
/****** Object:  ForeignKey [FK_User_Country]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileUser]  WITH CHECK ADD  CONSTRAINT [FK_User_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[PC_MobileCountry] ([CountryID])
GO
ALTER TABLE [dbo].[PC_MobileUser] CHECK CONSTRAINT [FK_User_Country]
GO
/****** Object:  ForeignKey [FK_user_Language]    Script Date: 01/24/2012 13:19:45 ******/
ALTER TABLE [dbo].[PC_MobileUser]  WITH CHECK ADD  CONSTRAINT [FK_user_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[PC_MobileLanguage] ([LanguageID])
GO
ALTER TABLE [dbo].[PC_MobileUser] CHECK CONSTRAINT [FK_user_Language]
GO
