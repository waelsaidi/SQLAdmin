USE [FormationOddo]
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 16/06/2021 10:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[Staff_Id] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[Manager_Id] [int] NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[Staff_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Staffs] ON 
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (1, N'Douglas', N'Garcia', N'ehlydsmgz.xgqnmdv@zvl.org', N'410-487-2704', 0, NULL)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (2, N'Matthew', N'Wood', N'gfbpl.brdfn@cfkba.com', N'225-556-1556', 0, NULL)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (3, N'Julia', N'Campbell', N'dlkfrq.wsdoebw@dtiqcee.org', N'418-861-7579', 1, NULL)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (4, N'Isabelle', N'Lewis', N'wklijmu.nmmcm@flu.com', N'321-252-8049', 1, NULL)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (5, N'Clifton', N'White', N'paikez.pbildu@bgp.com', N'306-415-0501', 0, NULL)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (6, N'Armando', N'Murphy', N'cyiltn.mtojp@fhr.org', N'423-274-1562', 0, NULL)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (7, N'Hannah', N'Cook', N'wxecyehmy.lmablx@fne.com', N'312-272-2686', 1, NULL)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (8, N'Kevin', N'Bennett', N'eonbu.gqruo@mhdr.org', N'413-385-8545', 0, NULL)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (9, N'Clinton', N'Johnson', N'chmen.dyhlll@enqvddl.co', N'352-878-4091', 1, NULL)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (10, N'Edward', N'Stewart', N'ymsti.amwjozj@jmf.co', N'305-636-6190', 0, 15)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (11, N'Marvin', N'Ward', N'tuimkm.ewnujv@kzg.org', N'260-528-2779', 0, 43)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (12, N'Ella', N'Watson', N'zbgafkh.bxixco@jvl.org', N'315-972-8272', 0, 5)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (13, N'Joseph', N'Ross', N'fbnqvw.zncevx@uaj.org', N'219-282-7475', 1, 12)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (14, N'Emily', N'Diaz', N'xsduxv.rophw@lyfnsxc.com', N'307-487-7423', 1, 106)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (15, N'Bob', N'Parker', N'wosac.cqrwvlh@uxp.org', N'202-766-8907', 0, 103)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (16, N'Andy', N'Ramirez', N'vlwol.itcgs@twqbnxk.org', N'216-743-6454', 1, 102)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (17, N'Nicholas', N'Barnes', N'yyudmj.fkkefj@mznv.org', N'317-973-3189', 1, 102)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (18, N'Jose', N'Miller', N'lrrjd.esslnn@rofmo.org', N'337-767-1677', 1, 9)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (19, N'Ellie', N'Butler', N'dividxumd.bvkncx@xlzblwg.org', N'412-326-3471', 1, 12)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (20, N'Joel', N'Thomas', N'qpgnsdsn.srnla@dbccod.co', N'417-378-6815', 1, 14)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (21, N'Allison', N'Lee', N'ettqvw.witarw@hup.com', N'316-548-8891', 0, 2)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (22, N'Charlotte', N'Anderson', N'grxff.fwkrdxo@fgfde.org', N'303-797-4465', 0, 64)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (23, N'Mackenzie', N'King', N'wkdbyfcwl.nqtba@rfgq.co', N'229-440-3656', 0, 68)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (24, N'Roland', N'Reyes', N'odqqpbyzn.kcsmb@imx.org', N'268-651-5551', 0, 8)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (25, N'Darrell', N'Bailey', N'rblltsmf.mkhvg@bedp.org', N'325-347-2483', 0, 5)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (26, N'Natalie', N'Moore', N'ujarqj.clvor@inpfl.org', N'309-691-1485', 0, 100)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (27, N'Rodney', N'Foster', N'nksmsp.pbped@eqps.co', N'304-594-2288', 0, 104)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (28, N'Robert', N'Allen', N'amkyaf.wevyp@bmk.co', N'206-507-0672', 0, 55)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (29, N'Dwayne', N'Harris', N'dembey.ubiduo@wgas.com', N'256-475-2330', 0, 96)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (30, N'Aaliyah', N'Jones', N'nssdi.kbiwt@jggyvjo.org', N'251-956-6616', 1, 103)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (31, N'Jacob', N'Baker', N'qhlqk.rtaenxq@ifs.org', N'419-836-6102', 1, 107)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (32, N'Keith', N'Sanchez', N'gxkcy.vphfkw@xyq.com', N'408-515-5452', 0, 1)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (33, N'Kenneth', N'Hall', N'yvufdbt.kyjnuy@ehqt.org', N'270-826-3197', 1, 108)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (34, N'Jerry', N'Gonzalez', N'kqhudiy.wnqqv@ibp.co', N'386-603-4079', 1, 106)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (35, N'Jerome', N'Mitchell', N'erfcrve.lbulcw@nem.org', N'215-511-7245', 1, 1)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (36, N'Victoria', N'Powell', N'fltjrx.fighp@wlbesni.co', N'240-581-5154', 0, 4)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (37, N'Stella', N'Myers', N'ekkxvb.urhopmi@jksb.org', N'267-496-4374', 1, 82)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (38, N'Perry', N'Torres', N'ntcor.fpnoa@uiw.org', N'228-388-8149', 0, 16)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (39, N'Ken', N'Cooper', N'nyctcdpdk.rzexm@hspy.co', N'252-467-2584', 1, 100)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (40, N'Jesus', N'Long', N'niqqv.wpxsrq@pfn.com', N'302-627-0131', 0, 52)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (41, N'Savannah', N'Green', N'qwpdok.eevnr@khs.co', N'313-918-1722', 1, 108)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (42, N'Vivian', N'Peterson', N'lvogu.evplcr@yjo.co', N'264-652-3795', 0, 76)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (43, N'Kaitlyn', N'Reed', N'lvfbt.gjmjq@ljy.com', N'204-643-7651', 0, 107)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (44, N'Zoe', N'Sanders', N'mherioy.ledbphm@mgl.com', N'276-696-4492', 1, 2)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (45, N'Claude', N'Williams', N'guukga.muebvw@xdc.co', N'209-659-3086', 1, 38)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (46, N'Ramon', N'Adams', N'uhygm.ykvqphn@dob.org', N'205-810-1832', 1, 104)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (47, N'Julian', N'Clark', N'lddxxo.puvtuje@nsjr.org', N'254-837-5382', 0, 1)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (48, N'Paisley', N'Lopez', N'mkwvc.spshj@tjpo.co', N'210-582-2903', 1, 91)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (49, N'Darryl', N'Morris', N'gjzkt.tajmmwf@irh.org', N'212-429-5175', 0, 104)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (50, N'Javier', N'Perez', N'ptvfv.tfmfj@vlov.org', N'401-538-2245', 0, 103)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (51, N'Gilbert', N'Gomez', N'wlzsi.tjbxdhp@ypg.org', N'406-697-3776', 1, 4)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (52, N'Lauren', N'Howard', N'eysken.fqauufp@fbo.com', N'314-566-4271', 0, 89)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (53, N'Hailey', N'Smith', N'ncrtqwi.heiip@pcml.com', N'224-526-2165', 1, 5)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (54, N'Avery', N'Edwards', N'pudyq.nswssjo@cos.org', N'340-932-2374', 1, 104)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (55, N'Keira', N'Sullivan', N'kzuprdnk.xqunok@dmp.com', N'250-538-2146', 1, 24)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (56, N'Johnnie', N'James', N'omikt.snump@qiodw.co', N'301-726-4353', 1, 107)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (57, N'Aria', N'Wilson', N'hdvqr.sjhht@mgf.org', N'404-229-7755', 1, 7)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (58, N'Lawrence', N'Nelson', N'urwse.dpinlj@sedw.org', N'203-868-9067', 0, 86)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (59, N'Jorge', N'Morales', N'rxfzi.vcjwf@mlp.co', N'415-789-9734', 1, 1)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (60, N'Lillian', N'Roberts', N'riivr.kvqqb@fvan.co', N'234-927-1519', 1, 8)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (61, N'Camilla', N'Walker', N'ggwcxmka.kdhwhfn@kvf.co', N'330-738-3386', 0, 26)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (62, N'Lila', N'Gutierrez', N'vahliqg.bljysf@ovlegd.com', N'318-732-8333', 0, 1)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (63, N'Ronnie', N'Perry', N'wcuxp.qhczv@bff.co', N'281-571-9843', 1, 1)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (64, N'Ian', N'Scott', N'ywovetpgq.psfoo@cdd.org', N'334-773-6462', 1, 49)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (65, N'Barry', N'Flores', N'pqxtk.vkmbv@sxz.co', N'323-719-3605', 1, 8)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (66, N'Salvador', N'Turner', N'zreyp.yfwolox@qlh.com', N'345-526-3894', 0, 82)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (67, N'Grace', N'Martinez', N'dwbrb.kznwlyw@ahm.org', N'207-397-3236', 1, 106)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (68, N'Eric', N'Carter', N'qebeq.ryupx@pkq.org', N'214-392-7644', 0, 5)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (69, N'Nelson', N'Brown', N'lwdqrqm.vxpya@tws.co', N'336-376-1578', 0, 19)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (70, N'Ray', N'Bell', N'xwtbcz.ldtiro@dhqqc.org', N'246-660-3253', 1, 107)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (71, N'Juan', N'Evans', N'wqplo.flzoj@ddu.org', N'339-896-9976', 0, 104)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (72, N'Larry', N'Gray', N'rrewvd.proeb@tkj.co', N'361-547-7567', 1, 13)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (73, N'Jesse', N'Davis', N'ufopjunuf.rsfbceo@xnbk.org', N'320-838-6261', 0, 53)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (74, N'Bobby', N'Nguyen', N'tggcbutic.oomxjnw@opd.com', N'201-547-8665', 0, 75)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (75, N'Brooklyn', N'Rogers', N'dqualuy.sxejv@hxw.com', N'308-468-1532', 0, 8)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (76, N'Christopher', N'Fisher', N'klghbr.ebgww@mdx.org', N'416-819-4813', 0, 12)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (77, N'Franklin', N'Ortiz', N'vrphvxk.wqlor@zyhb.org', N'231-716-5283', 0, 103)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (78, N'Makayla', N'Russell', N'vwirtwb.wwyic@bcx.com', N'242-360-1978', 0, 15)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (79, N'Ruben', N'Young', N'xagye.gadoe@sxr.com', N'402-460-0511', 1, 108)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (80, N'Francisco', N'Price', N'yjkcdj.gpbrtba@gweaszp.com', N'347-252-4377', 0, 1)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (81, N'Raul', N'Jackson', N'qaeit.qhonb@ysd.org', N'269-437-0854', 0, 76)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (82, N'Dustin', N'Martin', N'lmcqkfa.oqlzk@tiqe.org', N'248-550-4524', 0, 42)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (83, N'Gordon', N'Taylor', N'iltcq.ivwtp@dnf.co', N'289-417-2761', 0, 58)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (84, N'Kylie', N'Hill', N'egbjerktx.fuijie@smoty.org', N'262-471-3112', 0, 6)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (85, N'Olivia', N'Morgan', N'jqpqze.etfqm@dhf.com', N'310-624-6239', 0, 17)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (86, N'Arianna', N'Richardson', N'uvqjq.dihhf@ups.org', N'319-357-1941', 0, 8)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (87, N'Casey', N'Wright', N'vivqxvt.aaycqb@zqjp.org', N'409-747-9763', 0, 95)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (88, N'Marion', N'Jenkins', N'iczzs.dynac@yjrh.org', N'405-467-1452', 1, 100)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (89, N'Mark', N'Robinson', N'jvvhr.pwltrhc@cir.com', N'407-204-2781', 1, 1)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (90, N'Erik', N'Thompson', N'rkwtm.hjxowat@toc.org', N'351-472-2822', 1, 106)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (91, N'Charlie', N'Kelly', N'phubvi.jcsirr@qiebgrk.org', N'253-413-0183', 0, 106)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (92, N'Alex', N'Hughes', N'exrlgqs.jyrsxxi@wnzg.org', N'208-218-1728', 0, 12)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (93, N'Dan', N'Phillips', N'lgyvfmvb.tqkkypa@kvvhf.co', N'403-662-8718', 0, 109)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (94, N'Sarah', N'Rivera', N'fcmrh.kjqwka@hxd.co', N'239-391-1128', 1, 8)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (95, N'Peter', N'Cruz', N'lmoggbqef.skzzw@mkw.co', N'414-615-3773', 0, 13)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (96, N'Roberto', N'Collins', N'ncobd.snbet@btt.com', N'213-891-7429', 0, 101)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (97, N'Jaime', N'Brooks', N'jfjkext.ecyvqkr@komx.org', N'284-744-8777', 0, 5)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (98, N'Ernest', N'Cox', N'msngqg.rtile@kpumd.org', N'217-643-2632', 0, 106)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (99, N'Benjamin', N'Hernandez', N'qpads.izxgyy@dnie.org', N'218-809-7462', 0, 19)
GO
INSERT [dbo].[Staffs] ([Staff_Id], [First_Name], [Last_Name], [email], [phone], [Active], [Manager_Id]) VALUES (100, N'Phillip', N'Rodriguez', N'whxuen.oumfeeu@sysum.org', N'360-462-1185', 0, 17)
GO
SET IDENTITY_INSERT [dbo].[Staffs] OFF
GO
