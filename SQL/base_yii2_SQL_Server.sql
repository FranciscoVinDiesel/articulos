USE [base_yii2]
GO
/****** Object:  Table [dbo].[audit_data]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entry_id] [int] NOT NULL,
	[type] [varchar](255) NOT NULL,
	[data] [text] NULL,
	[created] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audit_entry]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_entry](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created] [nvarchar](50) NULL,
	[user_id] [int] NULL,
	[duration] [float] NULL,
	[ip] [varchar](45) NULL,
	[request_method] [varchar](16) NULL,
	[ajax] [int] NOT NULL,
	[route] [varchar](255) NULL,
	[memory_max] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audit_error]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_error](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entry_id] [int] NOT NULL,
	[created] [nvarchar](50) NULL,
	[message] [varchar](512) NULL,
	[code] [int] NULL,
	[file] [varchar](512) NULL,
	[line] [int] NULL,
	[trace] [varchar](512) NULL,
	[hash] [varchar](32) NULL,
	[emailed] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audit_javascript]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_javascript](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entry_id] [int] NOT NULL,
	[created] [nvarchar](50) NULL,
	[type] [varchar](20) NOT NULL,
	[message] [text] NOT NULL,
	[origin] [varchar](512) NULL,
	[data] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audit_mail]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_mail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entry_id] [int] NOT NULL,
	[created] [nvarchar](50) NULL,
	[successful] [int] NOT NULL,
	[from] [varchar](255) NULL,
	[to] [varchar](255) NULL,
	[reply] [varchar](255) NULL,
	[cc] [varchar](255) NULL,
	[bcc] [varchar](255) NULL,
	[subject] [varchar](255) NULL,
	[text] [text] NULL,
	[html] [text] NULL,
	[data] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[audit_trail]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[audit_trail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entry_id] [int] NULL,
	[user_id] [int] NULL,
	[action] [varchar](255) NOT NULL,
	[model] [varchar](255) NOT NULL,
	[model_id] [varchar](255) NOT NULL,
	[field] [varchar](255) NULL,
	[old_value] [text] NULL,
	[new_value] [text] NULL,
	[created] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[auth_assignment]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_assignment](
	[item_name] [nvarchar](64) NOT NULL,
	[user_id] [nvarchar](64) NOT NULL,
	[created_at] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[item_name] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[auth_item]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_item](
	[name] [nvarchar](64) NOT NULL,
	[type] [int] NOT NULL,
	[description] [text] NULL,
	[rule_name] [nvarchar](64) NULL,
	[data] [text] NULL,
	[created_at] [int] NULL,
	[updated_at] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[auth_item_child]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_item_child](
	[parent] [nvarchar](64) NOT NULL,
	[child] [nvarchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[parent] ASC,
	[child] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[auth_rule]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_rule](
	[name] [nvarchar](64) NOT NULL,
	[data] [text] NULL,
	[created_at] [int] NULL,
	[updated_at] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[logs]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](250) NOT NULL,
	[ip] [varchar](50) NOT NULL,
	[acceso] [varchar](250) NOT NULL,
	[fecha] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[migration]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[migration](
	[version] [varchar](180) NOT NULL,
	[apply_time] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[profile]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profile](
	[user_id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[public_email] [nvarchar](255) NULL,
	[gravatar_email] [nvarchar](255) NULL,
	[gravatar_id] [nvarchar](32) NULL,
	[location] [nvarchar](255) NULL,
	[website] [nvarchar](255) NULL,
	[bio] [text] NULL,
	[timezone] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[social_account]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[social_account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[provider] [nvarchar](255) NOT NULL,
	[client_id] [nvarchar](255) NOT NULL,
	[data] [text] NULL,
	[code] [nvarchar](32) NULL,
	[created_at] [int] NULL,
	[email] [nvarchar](255) NULL,
	[username] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[token]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[token](
	[user_id] [int] NOT NULL,
	[code] [nvarchar](32) NOT NULL,
	[created_at] [int] NOT NULL,
	[type] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 18/10/2016 13:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[password_hash] [nvarchar](60) NOT NULL,
	[auth_key] [nvarchar](32) NOT NULL,
	[confirmed_at] [int] NULL,
	[unconfirmed_email] [nvarchar](255) NULL,
	[blocked_at] [int] NULL,
	[registration_ip] [nvarchar](45) NULL,
	[created_at] [int] NOT NULL,
	[updated_at] [int] NOT NULL,
	[flags] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[audit_trail] ON 

INSERT [dbo].[audit_trail] ([id], [entry_id], [user_id], [action], [model], [model_id], [field], [old_value], [new_value], [created]) VALUES (27, 2690, 1, N'UPDATE', N'common\models\vEstudiantesInscritos', N'11606', N'registroCompleto', N'0', N'1', N'2016-10-17 15:10:59')
SET IDENTITY_INSERT [dbo].[audit_trail] OFF
INSERT [dbo].[auth_assignment] ([item_name], [user_id], [created_at]) VALUES (N'admin', N'1', 1472570397)
INSERT [dbo].[auth_assignment] ([item_name], [user_id], [created_at]) VALUES (N'admin', N'7', 1476710250)
INSERT [dbo].[auth_assignment] ([item_name], [user_id], [created_at]) VALUES (N'user', N'10', 1476732688)
INSERT [dbo].[auth_assignment] ([item_name], [user_id], [created_at]) VALUES (N'user', N'2', 1476732899)
INSERT [dbo].[auth_assignment] ([item_name], [user_id], [created_at]) VALUES (N'user', N'8', 1476710269)
INSERT [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'admin', 1, N'Aministra', NULL, NULL, 1472566840, 1472566840)
INSERT [dbo].[auth_item] ([name], [type], [description], [rule_name], [data], [created_at], [updated_at]) VALUES (N'user', 1, N'Usuario de actividades', NULL, NULL, 1472774913, 1472774913)
SET IDENTITY_INSERT [dbo].[logs] ON 

INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso], [fecha]) VALUES (23, N'luis.herrera@pucese.edu.ec', N'::1', N'1', N'2016-10-17 14:19:30')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso], [fecha]) VALUES (24, N'superadmin', N'::1', N'0', N'2016-10-17 14:28:39')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso], [fecha]) VALUES (25, N'luis.herrera@pucese.edu.ec', N'::1', N'1', N'2016-10-17 14:30:17')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso], [fecha]) VALUES (26, N'soporte@pucese.edu.ec', N'::1', N'1', N'2016-10-17 14:31:53')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso], [fecha]) VALUES (27, N'luis.herrera@pucese.edu.ec', N'::1', N'1', N'2016-10-17 14:32:36')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso], [fecha]) VALUES (28, N'soporte@pucese.edu.ec', N'::1', N'1', N'2016-10-17 14:39:49')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso], [fecha]) VALUES (29, N'luis.herrera@pucese.edu.ec', N'::1', N'1', N'2016-10-17 14:40:13')
INSERT [dbo].[logs] ([id], [usuario], [ip], [acceso], [fecha]) VALUES (30, N'luis.herrera@pucese.edu.ec', N'::1', N'1', N'2016-10-17 15:03:21')
SET IDENTITY_INSERT [dbo].[logs] OFF
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm000000_000000_base', 1472563998)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140209_132017_init', 1472564003)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140403_174025_create_account_table', 1472564005)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140504_113157_update_tables', 1472564011)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140504_130429_create_token_table', 1472564014)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140506_102106_rbac_init', 1472564521)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140830_171933_fix_ip_field', 1472564015)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm140830_172703_change_account_table_name', 1472564016)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm141222_110026_update_ip_field', 1472564016)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm141222_135246_alter_username_length', 1472564017)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150614_103145_update_social_account_table', 1472564020)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150623_212711_fix_username_notnull', 1472564021)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000001_create_audit_entry', 1472702894)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000002_create_audit_data', 1472702895)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000003_create_audit_error', 1472702896)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000004_create_audit_trail', 1472702898)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000005_create_audit_javascript', 1472702900)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150626_000006_create_audit_mail', 1472702901)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm150714_000001_alter_audit_data', 1472702902)
INSERT [dbo].[migration] ([version], [apply_time]) VALUES (N'm151218_234654_add_timezone_to_profile', 1472564022)
INSERT [dbo].[profile] ([user_id], [name], [public_email], [gravatar_email], [gravatar_id], [location], [website], [bio], [timezone]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[profile] ([user_id], [name], [public_email], [gravatar_email], [gravatar_id], [location], [website], [bio], [timezone]) VALUES (2, N'', N'', N'', N'd41d8cd98f00b204e9800998ecf8427e', N'', N'', N'', N'America/Guayaquil')
INSERT [dbo].[profile] ([user_id], [name], [public_email], [gravatar_email], [gravatar_id], [location], [website], [bio], [timezone]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[token] ([user_id], [code], [created_at], [type]) VALUES (1, N'_Vww4DGJIMM-5emZOhFvVeurnUb3C5WR', 1472564610, 0)
INSERT [dbo].[token] ([user_id], [code], [created_at], [type]) VALUES (2, N'eB8RHzL_ziHUzkvGnJDR56ACl0TEWaHK', 1472566993, 2)
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [email], [password_hash], [auth_key], [confirmed_at], [unconfirmed_email], [blocked_at], [registration_ip], [created_at], [updated_at], [flags], [status]) VALUES (1, N'superadmin', N'luis.herrera@pucese.edu.ec', N'$2y$12$rQ3kv0tMJm9oyBJB18/pJOJ54PTqSTdYEP/ZsZ0I16VBmEOUbhugC', N'3RKcjLUns0L5O-yfxik3XzT8LK3HLwZ4', 1472566181, NULL, NULL, N'::1', 1472564609, 1476479163, 0, 10)
INSERT [dbo].[user] ([id], [username], [email], [password_hash], [auth_key], [confirmed_at], [unconfirmed_email], [blocked_at], [registration_ip], [created_at], [updated_at], [flags], [status]) VALUES (2, N'marc', N'marc.grob@pucese.edu.ec', N'$2y$12$q.r0Li.eNoh2kBSz8EdoWuE4ndQXPjMAgqOV5NIZ.RwZ.RUpY2UE2', N'0Addadl8ti25Xdc_6BkMVfgsZliKpEzX', 1472566292, N'marc1@correo.com', NULL, N'::1', 1472566292, 1476479274, 0, 0)
INSERT [dbo].[user] ([id], [username], [email], [password_hash], [auth_key], [confirmed_at], [unconfirmed_email], [blocked_at], [registration_ip], [created_at], [updated_at], [flags], [status]) VALUES (7, N'kleber.posligua', N'kleber.posligua@pucese.edu.ec', N'$2y$12$q.r0Li.eNoh2kBSz8EdoWuE4ndQXPjMAgqOV5NIZ.RwZ.RUpY2UE2', N'0Addadl8ti25Xdc_6BkMVfgsZliKpEzX', 1472566292, NULL, NULL, N'::1', 1472566292, 1476479274, 0, 10)
INSERT [dbo].[user] ([id], [username], [email], [password_hash], [auth_key], [confirmed_at], [unconfirmed_email], [blocked_at], [registration_ip], [created_at], [updated_at], [flags], [status]) VALUES (8, N'lilian.vera', N'lilian.vera@pucese.edu.ec', N'$2y$12$q.r0Li.eNoh2kBSz8EdoWuE4ndQXPjMAgqOV5NIZ.RwZ.RUpY2UE2', N'0Addadl8ti25Xdc_6BkMVfgsZliKpEzX', 1472566292, NULL, NULL, N'::1', 1472566292, 1476479274, 0, 10)
INSERT [dbo].[user] ([id], [username], [email], [password_hash], [auth_key], [confirmed_at], [unconfirmed_email], [blocked_at], [registration_ip], [created_at], [updated_at], [flags], [status]) VALUES (10, N'soporte.pucese', N'soporte@pucese.edu.ec', N'$2y$12$q.r0Li.eNoh2kBSz8EdoWuE4ndQXPjMAgqOV5NIZ.RwZ.RUpY2UE2', N'TjSBdG6pKWw4B_q_PmH0MNaK9KsJbXqF', 1472566292, NULL, NULL, N'::1', 1472566292, 1476479274, 0, 10)
SET IDENTITY_INSERT [dbo].[user] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [account_unique]    Script Date: 18/10/2016 13:23:41 ******/
ALTER TABLE [dbo].[social_account] ADD  CONSTRAINT [account_unique] UNIQUE NONCLUSTERED 
(
	[provider] ASC,
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [account_unique_code]    Script Date: 18/10/2016 13:23:41 ******/
ALTER TABLE [dbo].[social_account] ADD  CONSTRAINT [account_unique_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [token_unique]    Script Date: 18/10/2016 13:23:41 ******/
ALTER TABLE [dbo].[token] ADD  CONSTRAINT [token_unique] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[code] ASC,
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [user_unique_email]    Script Date: 18/10/2016 13:23:41 ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [user_unique_email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [user_unique_username]    Script Date: 18/10/2016 13:23:41 ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [user_unique_username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[audit_data] ADD  DEFAULT (NULL) FOR [created]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT (NULL) FOR [duration]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT (NULL) FOR [ip]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT (NULL) FOR [request_method]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT ('0') FOR [ajax]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT (NULL) FOR [route]
GO
ALTER TABLE [dbo].[audit_entry] ADD  DEFAULT (NULL) FOR [memory_max]
GO
ALTER TABLE [dbo].[audit_error] ADD  DEFAULT (NULL) FOR [file]
GO
ALTER TABLE [dbo].[audit_error] ADD  DEFAULT (NULL) FOR [line]
GO
ALTER TABLE [dbo].[audit_error] ADD  DEFAULT (NULL) FOR [hash]
GO
ALTER TABLE [dbo].[audit_error] ADD  DEFAULT ('0') FOR [emailed]
GO
ALTER TABLE [dbo].[audit_javascript] ADD  DEFAULT (NULL) FOR [origin]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [from]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [to]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [reply]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [cc]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [bcc]
GO
ALTER TABLE [dbo].[audit_mail] ADD  DEFAULT (NULL) FOR [subject]
GO
ALTER TABLE [dbo].[audit_trail] ADD  DEFAULT (NULL) FOR [entry_id]
GO
ALTER TABLE [dbo].[audit_trail] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[audit_trail] ADD  DEFAULT (NULL) FOR [field]
GO
ALTER TABLE [dbo].[auth_assignment] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[auth_item] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[auth_item] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[auth_rule] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[auth_rule] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[migration] ADD  DEFAULT (NULL) FOR [apply_time]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [public_email]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [gravatar_email]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [gravatar_id]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [location]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [website]
GO
ALTER TABLE [dbo].[profile] ADD  DEFAULT (NULL) FOR [timezone]
GO
ALTER TABLE [dbo].[social_account] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[social_account] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[social_account] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[social_account] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[social_account] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [confirmed_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [unconfirmed_email]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [blocked_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [registration_ip]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('0') FOR [flags]
GO
ALTER TABLE [dbo].[audit_data]  WITH CHECK ADD  CONSTRAINT [fk_audit_data_entry_id] FOREIGN KEY([entry_id])
REFERENCES [dbo].[audit_entry] ([id])
GO
ALTER TABLE [dbo].[audit_data] CHECK CONSTRAINT [fk_audit_data_entry_id]
GO
ALTER TABLE [dbo].[audit_error]  WITH CHECK ADD  CONSTRAINT [fk_audit_error_entry_id] FOREIGN KEY([entry_id])
REFERENCES [dbo].[audit_entry] ([id])
GO
ALTER TABLE [dbo].[audit_error] CHECK CONSTRAINT [fk_audit_error_entry_id]
GO
ALTER TABLE [dbo].[audit_javascript]  WITH CHECK ADD  CONSTRAINT [fk_audit_javascript_entry_id] FOREIGN KEY([entry_id])
REFERENCES [dbo].[audit_entry] ([id])
GO
ALTER TABLE [dbo].[audit_javascript] CHECK CONSTRAINT [fk_audit_javascript_entry_id]
GO
ALTER TABLE [dbo].[audit_mail]  WITH CHECK ADD  CONSTRAINT [fk_audit_mail_entry_id] FOREIGN KEY([entry_id])
REFERENCES [dbo].[audit_entry] ([id])
GO
ALTER TABLE [dbo].[audit_mail] CHECK CONSTRAINT [fk_audit_mail_entry_id]
GO
