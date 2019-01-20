CREATE TABLE ComicCreators(
	IssueID INT NOT NULL,
	CreatorID INT NOT NULL,
	CreatorRole VARCHAR(50) NULL,
	PRIMARY KEY (
	  IssueID,
	  CreatorID
	)
);

CREATE TABLE Creators(
	CreatorID INT IDENTITY(1,1) NOT NULL,
	Name VARCHAR(50) NULL,
	CountryOfResidence VARCHAR(25) NULL,
	TaxReferenceNumber VARBINARY(512) NULL,
  EmailAddress VARCHAR(256) NULL,
  PRIMARY KEY
  (
    CreatorID ASC
  )
);

CREATE TABLE Issues(
	IssueID INT IDENTITY(1,1) NOT NULL,
	Title VARCHAR(500) NULL,
	PublicationDate DATE NULL,
	Publisher VARCHAR(50) NULL,
	SeriesNumber SMALLINT NULL,
	Description VARCHAR(max) NULL,
  PRIMARY KEY
  (
	  IssueID ASC
  )
);

CREATE TABLE Stock(
	StockReferenceID INT IDENTITY(1,1) NOT NULL,
	IssueID INT NULL,
	Condition VARCHAR(10) NULL,
	AvailableQty SMALLINT NULL,
	Price NUMERIC(8, 2) NULL,
	Comments VARCHAR(1000) NULL,
	CoverImagePath VARCHAR(250) NULL,
  PRIMARY KEY
  (
	  StockReferenceID ASC
  )
);

INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (2, 3, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (2, 13, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (2, 296, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (2, 585, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (2, 634, N'Cover Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (3, 46, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (3, 157, N'Cover Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (3, 295, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (3, 465, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (3, 703, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (3, 710, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (4, 122, N'Cover Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (4, 203, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (4, 549, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (4, 800, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (4, 892, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (5, 43, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (5, 128, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (5, 295, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (5, 982, N'Cover Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (6, 143, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (6, 248, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (6, 403, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (6, 507, N'Cover Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (6, 673, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (6, 948, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (7, 21, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (7, 113, N'Cover Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (7, 169, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (7, 737, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (7, 874, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (8, 117, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (8, 466, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (8, 506, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (8, 799, N'Cover Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (8, 929, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (9, 112, N'Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (9, 361, N'Cover Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (9, 822, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (10, 5, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (10, 72, N'Writer');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (10, 611, N'Cover Artist');
INSERT INTO ComicCreators (IssueID, CreatorID, CreatorRole) VALUES (10, 662, N'Artist');

INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (1, N'Nicole Franco', N'Qatar', NULL, N'liziy.ejqbihoaz@jkbsel.tqmzrf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (2, N'Pablo Terry', N'Switzerland', NULL, N'piozk.ihpxcc@bvasx-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (3, N'Desiree Lambert', N'Uganda', NULL, N'enpdw.qkjosgmaz@btcfiq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (4, N'Chadwick Stephenson', N'Malvinas', NULL, N'kdrntswp75@cymsmw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (5, N'Daphne Gilbert', N'Italy', NULL, N'vbwgy.xezyuh@xpvv.apeivl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (6, N'Sonya Mosley', N'Colombia', NULL, N'tqdituip.uxzmguo@czpdrbr.ewnkmh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (7, N'Katina Browning', N'Mozambique', NULL, N'owpbnrkh965@uucoeem.gaecsb.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (8, N'Kari Boyd', NULL, NULL, N'poisyzz.phbqdaax@qktgz.kh-gor.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (9, N'Seth Mc Bride', N'China', NULL, N'thcfpmvv684@-efehl.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (10, N'Bernard Knight', N'Trinidad', NULL, N'ijrn.owxd@wyuh.yudppb.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (11, N'Devon Fleming', N'Mozambique', NULL, N'dacimw.luvy@wqgstk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (12, N'Janet Ramos', N'Colombia', NULL, N'bkyejqs2@nymn.glzjdy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (13, N'Jose Velazquez', N'Latvia', NULL, N'uynixieq.rjhm@ebow-q.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (14, N'Joshua Conrad', N'Vanuatu', NULL, N'timyzxxm.psfxuyxiqz@cuowea.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (15, N'Cassandra Randall', N'Eire', NULL, N'bdaioo.qyaetewfy@qzraykqf.jcrvcd.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (16, N'Marlon Ingram', N'Cameroon', NULL, N'sxifcr.ypkyxj@ttmjca.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (17, N'Karl Mac Donald', N'Serbia', NULL, N'jdvn051@azcnha.zuegu-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (18, N'Shari Kelley', N'Cameroon', NULL, N'cjsqi.kvyv@tnwumwx.qeeiva.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (19, N'Gabriel Proctor', N'Bhutan', NULL, N'civil8@waofok.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (20, N'Judy Hatfield', N'Jordan', NULL, N'ggjn384@hnowrtq.uzrvzf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (21, N'Alan Norton', N'Moldova', NULL, N'vjkq.zvxjpar@qojfph.xmykcw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (22, N'Gabriela Little', N'Burundi', NULL, N'jgxeln78@zgdpit.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (23, N'Mario Hampton', N'Mauritius', NULL, N'gpavsrlx.icgmzjcn@qaqjan.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (24, N'Jeffery Shepherd', N'Hungary', NULL, N'jibjm.tfcmuccuk@mnhunve.jezptc.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (25, N'Joni Kline', N'Kiribati', NULL, N'okgzq.gdabuynh@qbsi.ufecdy.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (26, N'Jeanette Vance', N'El Salvador', NULL, N'iijhoj8@aqmujj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (27, N'Juanita Craig', N'Jamaica', NULL, N'tsec.apatmoj@sskqzx.jugngw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (28, N'Nina Ponce', N'Aruba', NULL, N'vthbbw685@thevpc.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (29, N'Abigail Chavez', N'Indonesia', NULL, N'ztxzqiju126@ghjrnl.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (30, N'Latoya Peters', N'United Kingdom', NULL, N'ldaqm6@iw-jak.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (31, N'Sandy Acosta', N'Honduras', NULL, N'mlsk85@ekfpey.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (32, N'Alissa Perkins', N'Vatican City', NULL, N'qrws37@swgzctzic.qmvwbe.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (33, N'Roberto Lutz', N'Peru', NULL, N'gsrbyfu.tzga@twbgeh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (34, N'Shane Singleton', N'Taiwan', NULL, N'xwkec.pgza@kqy-ee.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (35, N'Claude Bowman', N'Philippines', NULL, N'iwazhba@tcufnbrby.sg-dqh.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (36, N'Jonathan Shepard', N'Togo', NULL, N'gacrjoak@ohr-tm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (37, N'Miriam Floyd', N'Denmark', NULL, N'kznexc.avqtvws@bsff.vwgyok.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (38, N'Kareem Cabrera', N'Tunisia', NULL, N'kert.nyuhylkke@spkdrulgh.qwynez.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (39, N'Monte Hatfield', N'Montenegro', NULL, N'mbbdlt.lgtslsguv@wrjgmk.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (40, N'Nikki Roach', N'Armenia', NULL, N'bvst96@pdrdki.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (41, N'Brian Clay', N'Macedonia', NULL, N'prxqes@duprh.xkrmgh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (42, N'Megan Esparza', N'Cape Verde', NULL, N'hsgqnsha849@ajrgg.dmxwug.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (43, N'Robert Stanton', N'Saint Lucia', NULL, N'rfhew47@kcsowvx.trcpbf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (44, N'Israel Warren', N'Burundi', NULL, N'fitslijl.hccgook@lmyaax.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (45, N'Gina Johns', N'Honduras', NULL, N'znpfyjg050@gthou.mboegj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (46, N'Eddie Esparza', N'Suriname', NULL, N'hhrtp92@tvzlnuut.fdtmck.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (47, N'Frances Mac Donald', N'Greenland', NULL, N'yjxo9@vk-jin.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (48, N'Claudia Moore', N'Indonesia', NULL, N'bonrakn.kdneqejm@ktke-p.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (49, N'Brad Joseph', N'Malawi', NULL, N'jshx.hcwff@kxyfwh.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (50, N'Cedric Vaughn', N'Honduras', NULL, N'fqxjrmlp0@cyammq.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (51, N'Shane Conner', N'South Georgia', NULL, N'iegbxa.zehzudc@yjvmnr.amgyws.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (52, N'Tracy Thomas', N'Morocco', NULL, N'grxlr@ckiuwr.vr-ngb.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (53, N'Miriam O''Neal', N'Burkina Faso', NULL, N'mczl.qgup@fqrdey.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (54, N'Marisa Bennett', N'Falklands', NULL, N'djkevgd8@qcypjirq.dndcnt.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (55, N'Veronica Mata', N'Luxembourg', NULL, N'vjjv.drupnu@zgomes.uwfpwz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (56, N'Tommy Rojas', N'Nauru', NULL, N'bhnyexl94@ntdvaq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (57, N'Marcia Clarke', N'China', NULL, N'obpl.ncgtsiltha@poefmt.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (58, N'Andrew Gallagher', N'Kyrgyzstan', NULL, N'gcctvigi952@xberll.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (59, N'Lewis Wright', N'Kuwait', NULL, N'dzubzs8@uk-myj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (60, N'Stacy Mc Intyre', N'Gabon', NULL, N'gbciztqh04@qyt-gg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (61, N'Misty Rivera', N'Zimbabwe', NULL, N'rczpbnxp33@aqugik.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (62, N'Angela Ochoa', N'Botswana', NULL, N'tazitbt.unckzjksdj@ucjwgw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (63, N'Erin Reynolds', N'Croatia', NULL, N'zyfakjz.twvje@lzahjo.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (64, N'Tracie Petty', N'Djibouti', NULL, N'phzxplme.dwicaq@zjntq.oojgvu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (65, N'Lauren Randolph', N'Malawi', NULL, N'sekckb26@brmkz.xppvmv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (66, N'Carlton Doyle', N'New Zealand', NULL, N'iabfjvw.drxgiurcw@owb-hk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (67, N'Arnold De Leon', N'Kuwait', NULL, N'uwrolat033@nisacp.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (68, N'Patrice Jensen', N'Montserrat', NULL, N'tqhs.xaxyyqy@clgptla.ebfitg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (69, N'Mike Robles', N'Egypt', NULL, N'hkvdbht11@kfjhwqq.-amsba.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (70, N'Latonya Harmon', N'Guatemala', NULL, N'cetrrr148@gqfwdv.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (71, N'Ramiro Harding', N'Tuvalu', NULL, N'bwqq33@fdre.kmrsyg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (72, N'Kenneth Mc Carthy', N'Syria', NULL, N'uxyskg.gsra@aikxusmqo.bruilb.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (73, N'Grace Mack', N'Malvinas', NULL, N'ylwsl.coaz@drimjibmk.dippsk.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (74, N'Theodore Welch', N'Azerbaijan', NULL, N'duccvg@rdmqdh.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (75, N'Miguel Brady', N'Uganda', NULL, N'mwdtxcnm.uyfraovq@vbclma.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (76, N'Gretchen Ayala', N'Israel', NULL, N'mneirry.jxzojozc@-dyvnj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (77, N'Shane Nixon', N'Honduras', NULL, N'ksrhvhh142@ielsym.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (78, N'Kathryn Warren', N'Isle of Man', NULL, N'djohvc.qytmoy@arghku.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (79, N'Alfred Ayers', N'Algeria', NULL, N'fhusj.ktxoisn@mlnonbel.irffdb.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (80, N'Terrence Patrick', N'Morocco', NULL, N'ybnhv@trjjkof.vzgbcd.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (81, N'Cary Olson', N'Tuvalu', NULL, N'eadfepu7@yrds.eimbez.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (82, N'Kari Valenzuela', N'Angola', NULL, N'fidbqvxk.hshedw@qcgce.o-yvpg.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (83, N'Allison Hull', N'Macedonia', NULL, N'aezgreyz.zzvzuae@ki-ubc.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (84, N'Wayne Choi', N'Angola', NULL, N'qwcurs1@eyvq.scezof.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (85, N'Trina Garza', N'Bhutan', NULL, N'yinsz@riclthg.hrvhmz.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (86, N'Gabriel O''Connor', N'Samoa', NULL, N'lbyyh.zmvjeors@uhnod.vyjgoa.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (87, N'Demond Kent', N'South Georgia', NULL, NULL);
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (88, N'Jeffrey Brewer', N'Jamaica', NULL, N'iyzoiy791@yb-pyo.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (89, N'Shaun Mc Knight', N'Guinea-Bissau', NULL, N'scdid@vxcjaf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (90, N'Alisha Cuevas', N'Bangladesh', NULL, N'kiosmpke@qpmttp.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (91, N'Lee Mc Mahon', N'Puerto Rico', NULL, N'fevf028@vlmnf-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (92, N'Dana Perkins', N'Rwanda', NULL, N'msdcgcn.kjqlksxfm@ineinz.xdafts.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (93, N'Bethany Horn', N'Jordan', NULL, N'dccpcre.mwmlt@trmxzn.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (94, N'Kelvin Casey', N'Gambia', NULL, N'gbpvee.cbpv@fweq.vqmpeo.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (95, N'Ericka Shelton', N'Aruba', NULL, N'bfljpg.abisqxzk@tgwmrsiez.tlkfls.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (96, N'Karla Wilkins', N'India', NULL, N'qsaoo.uwytyrdfb@poos-k.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (97, N'Travis Rush', N'Uzbekistan', NULL, N'ooqbgx76@rhiwwkkah.fijzcy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (98, N'Laura Hurst', N'Malaysia', NULL, N'rphz1@voiiny.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (99, N'Wendy Andersen', N'Morocco', NULL, N'ihsw.ghxihrgule@mwrgss.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (100, N'Cecil Mora', N'Puerto Rico', NULL, N'olxhs1@k-ao-r.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (101, N'Toby Bradshaw', N'Honduras', NULL, N'wclbdfm.vdbozuy@kqqwz.zutwyy.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (102, N'Kelly Smith', N'Portugal', NULL, N'elwz37@zw-tbk.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (103, N'Mario Hull', N'Canada', NULL, N'cfhmrzdi46@zdxcbu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (104, N'Vernon Lloyd', N'Colombia', NULL, N'mrul.cgshqvvprr@vxk-ff.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (105, N'Heather Archer', N'Kazakhstan', NULL, N'wwwzil766@agvqdzuqk.eieytn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (106, N'Regina Patel', N'Uzbekistan', NULL, N'owkfgj.ejsw@ovvr.jbfuwm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (107, N'Peggy Boone', N'Australia', NULL, N'pdmsp136@lxdukx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (108, N'Elton Arias', N'Bahamas', NULL, N'fvjdbz30@vtcvrq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (109, N'Kirk Austin', N'Guam', NULL, N'wwfear94@zzku.iqpdxu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (110, N'Darius May', N'Barbados', NULL, N'besujcuu.jpecjwp@tpuw.i-h-nk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (111, N'Roderick Horn', N'Eire', NULL, N'ybynksoi.blbepggtp@mmghjk.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (112, N'Henry Small', N'Russia', NULL, N'ugnpg.ewlwvoemsl@kbttvlelo.e-gfnu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (113, N'Glenn Decker', N'Kiribati', NULL, N'vunmck7@bowdhxs.mrdaeo.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (114, N'Johnny Tapia', N'Swaziland', NULL, N'kppzj.pmqyzjlcs@mbhx-h.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (115, N'Sonia Knight', N'Haiti', NULL, N'kwqth.txddjz@hrqztrb.lfcbjh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (116, N'Moses Hammond', N'Venezuela', NULL, N'hepeiz.bjqozpld@bgjib.ihdmdu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (117, N'Warren Garrett', N'Montserrat', NULL, N'knvejh92@-movu-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (118, N'Leigh Huang', N'Comoros', NULL, N'hgfyd@gfgef.ltgttq.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (119, N'Ismael Santana', N'Bhutan', NULL, N'dkscvti.tnddixbxk@rbrevjc.nggamy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (120, N'Tera Novak', N'Saint Helena', NULL, N'kkagmo60@wfwjohqbt.gmqfdx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (121, N'Erik Blackwell', N'South Africa', NULL, N'qegkqn@aemsiyfik.mfh-ux.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (122, N'Tonya Davidson', N'Anguilla', NULL, N'qfjdaf@niytgm.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (123, N'Shonda Cherry', N'Ecuador', NULL, N'aoesaw9@fptk.euuwdg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (124, N'Angie Cohen', N'Chile', NULL, N'bttbzt.afwoj@mqlfby.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (125, N'Kerri Martinez', N'Namibia', NULL, N'uyao1@hrqgc.oejaej.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (126, N'Ian Mc Donald', N'China', NULL, N'nhph0@jxzdyf.cwvcfs.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (127, N'Alfonso Aguilar', N'Israel', NULL, N'kgxa.mmxc@xkxssc.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (128, N'Timothy Cantu', N'Eire', NULL, N'jdhpaxy7@zqwzu-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (129, N'Krystal Anthony', N'American Samoa', NULL, N'wkbal.rydlcp@gyh-uy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (130, N'Dion Mc Lean', N'Malawi', NULL, N'enrh9@rlkybg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (131, N'Maurice Bray', N'Kyrgyzstan', NULL, N'hgklimfa0@rstm.mtqib-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (132, N'Susana Frost', N'Sri Lanka', NULL, N'leoqf.xmrtnvalh@xlsa.qleujl.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (133, N'Freddie Vazquez', N'Slovenia', NULL, N'jfpbbllj01@zalijecdt.kkxd-x.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (134, N'Carla Serrano', N'Fiji', NULL, N'nnjhgz@ncqurq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (135, N'Taryn Mc Carthy', N'Denmark', NULL, N'iccubfmp.nhjmoq@prulxn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (136, N'Milton Orr', N'Costa Rica', NULL, N'pqjqtg.orjsl@qjtim.ao-cc-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (137, N'Candace Holmes', N'Syria', NULL, N'veokoqw826@wgzblw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (138, N'Alexis Beltran', N'Guadeloupe', NULL, N'efygnbjn.vlsnuiwny@wbvsest.aoyesz.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (139, N'Virginia Cummings', N'Mayotte', NULL, N'icvwnh@jmqfyytuh.cniiqi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (140, N'Gretchen Berry', N'Canada', NULL, N'xgank.ldovozb@ifmvp-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (141, N'Micah Dixon', N'Philippines', NULL, N'rgiu.fdtkwwd@trmuey.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (142, N'Quentin Levine', N'Rwanda', NULL, N'bxizjwsb.cveot@irvodt.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (143, N'Mandy Hebert', N'Belarus', NULL, N'etdcfh.chwk@h-izba.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (144, N'Alexander Curtis', N'Fiji', NULL, N'fyve.xowdmlfco@mcwbgv.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (145, N'Dwayne Everett', N'South Georgia', NULL, N'mkuffruo1@ksbnktybq.lkgpyb.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (146, N'Tracey Riddle', N'Virgin Islands', NULL, N'coaj.irlrwxpjrr@vpwcibw.iuybvl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (147, N'Rosa Ellis', N'French Guiana', NULL, N'csabv.thhetpctq@ge-zfy.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (148, N'Julian Maddox', N'Monaco', NULL, N'untjv92@-pwkcv.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (149, N'Ruth Berger', N'Uganda', NULL, N'cpgc3@pcmbndeq.xltiqv.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (150, N'Renee Perkins', N'Bangladesh', NULL, N'nyku.fbkcnllun@jenomlstd.ocsykh.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (151, N'Jean Spencer', N'Seychelles', NULL, N'junryhad2@ymgfqf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (152, N'Alvin Carrillo', N'San Marino', NULL, N'mratgpxr117@prfgojk.nouqql.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (153, N'Jacquelyn Conley', N'Isle of Man', NULL, N'cxawc@ckymbl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (154, N'Sean Kent', N'Suriname', NULL, N'arola.cqmely@kjafsikd.mokxlo.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (155, N'Stephanie Mccoy', N'Trinidad', NULL, N'lxqudicb@thsw.ncafrl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (156, N'Betty Lowery', N'Guam', NULL, N'vxlltq000@gaydin.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (157, N'Derek Ware', N'Lesotho', NULL, N'zgworxlk.lbgil@pbjysg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (158, N'Lillian Gibson', N'Zambia', NULL, N'vhcdcix.vrowbtqq@poeyqhnt.negyeg.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (159, N'Amber Parrish', N'Martinique', NULL, N'ihtlo@ctnju.m-asqi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (160, N'Darrin Davidson', N'Finland', NULL, N'oold7@fchjlu.dhkwet.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (161, N'Gordon Stevenson', N'Malawi', NULL, N'txtydofi.excgqyb@hglyae.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (162, N'Brooke Mills', N'Slovakia', NULL, N'ixqqvi37@--ukxf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (163, N'Alicia Soto', N'Aruba', NULL, N'yrnv9@yrsb-w.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (164, N'Autumn Guzman', N'Slovenia', NULL, N'vjpswid12@avhbpr.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (165, N'Roberta Colon', N'Mozambique', NULL, N'dfjpb010@fcwifbi.nzkqgg.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (166, N'Kurt Gross', N'Indonesia', NULL, N'kake61@vybfjdddv.yzwni-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (167, N'Paige Spence', N'United Kingdom', NULL, N'utiumfqd.itks@gjiiqhmdl.ykcwv-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (168, N'Xavier Dillon', N'Comoros', NULL, N'jmuamv.oeubofwui@ynlfdi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (169, N'Jennifer Mathews', N'Nauru', NULL, N'fztdipx2@nsjt.ijjsni.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (170, N'Cari Klein', N'Colombia', NULL, N'hgzx6@jfuall.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (171, N'Melissa Pugh', N'Belize', NULL, N'gmcc179@dorqeg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (172, N'Nick Acevedo', N'Eritrea', NULL, N'ylkrozz928@vgwktb.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (173, N'Abraham Hahn', N'Mozambique', NULL, N'egvss.qpulcs@vncfw.tsxakt.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (174, N'Elisabeth Rose', N'Uzbekistan', NULL, N'tnxid882@mjlmvb.laxqwc.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (175, N'Sandra Trujillo', N'Aruba', NULL, N'nxqhfh.gntof@rvefnj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (176, N'Christa Leon', N'Azerbaijan', NULL, N'fjjysw.fkuqzfzuir@yamdub.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (177, N'Allison Rollins', N'United States', NULL, N'rxfb49@cyilnd.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (178, N'Faith Farley', N'Vanuatu', NULL, N'zlwkxxvc.wedqqbkie@nuayyn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (179, N'Sherman Herrera', N'Grenada', NULL, N'mniu.uzgzhgeygb@mhhbfz.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (180, N'Chrystal Olsen', N'New Caledonia', NULL, N'lrvly206@jmwbch.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (181, N'Demond Petersen', N'Tajikistan', NULL, N'fpozhs54@ddrceuby.xxomfw.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (182, N'Alma Guzman', N'South Korea', NULL, N'fyxcdl.vefiyspkfh@txjgy.hrzmaw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (183, N'Irma Barnett', N'Gibraltar', NULL, N'hmjf.vziqwq@iegypdrh.qdpcdd.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (184, N'Robin Patrick', N'United Kingdom', NULL, N'jgckdaai.uptk@cjufcgx.zxtaio.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (185, N'Patricia Frazier', N'Qatar', NULL, N'zmmk.eegqb@swfw.auic-c.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (186, N'Hugh Welch', N'Panama', NULL, N'kggy.iypgxxnheq@etfgam.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (187, N'Charlotte Yates', N'Israel', NULL, N'nxmvmjbz@q-vycp.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (188, N'Valerie Branch', N'Vatican City', NULL, N'rtpt9@cdttum.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (189, N'Laurie Savage', N'Guyana', NULL, N'ttnvny6@yhdkee.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (190, N'Dina Hatfield', N'Taiwan', NULL, N'hsrym.guenwnkl@udev.-nrspj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (191, N'Ben Valenzuela', N'Peru', NULL, N'oohsd.vbifrloczq@vpjaiz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (192, N'Elaine Wright', N'Taiwan', NULL, N'dgtxx695@rf-tvy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (193, N'Rudy Frazier', N'Serbia', NULL, N'mlsc1@nytgbzphk.kkydku.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (194, N'Shad Armstrong', N'Finland', NULL, N'oprfkwyf.qujcxml@zqgkkk.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (195, N'Vanessa Griffin', N'Nauru', NULL, N'nohhh.pominwiw@qqzinmsus.nhcfuv.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (196, N'Chris Savage', N'Tonga', NULL, N'qlgjyz.zdcfrtzk@qj-bom.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (197, N'Teddy Hancock', N'Paraguay', NULL, N'vhkgns.fwuh@temorm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (198, N'Carla Harrington', N'Falklands', NULL, N'itlae.owtvjdgx@kmuncp.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (199, N'Sam Pearson', N'Nigeria', NULL, N'qpupavbz@nmymqz.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (200, N'Summer Duffy', N'Isle of Man', NULL, N'ivnhuy721@xnep.wxtjah.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (201, N'Jane Lee', N'Argentina', NULL, N'cxoh.obtvcnubo@wuoxpzuw.ccryte.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (202, N'Irma Huber', N'Bermuda', NULL, N'wjlm581@bdvise.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (203, N'Shirley House', N'Vanuatu', NULL, N'rzmxul438@lxef.smsy-k.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (204, N'Trina Sharp', N'Russia', NULL, N'tniuy.qkyjlrb@fnjrdrhqd.lsusya.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (205, N'Todd Logan', N'Virgin Islands', NULL, N'rrspkbnh@xristm.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (206, N'Candy Myers', N'Malaysia', NULL, N'pbgrr.vvrziuqjn@chdwqi.ifujbz.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (207, N'Pamela Valenzuela', N'Canada', NULL, N'blpk@rkizm-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (208, N'Kurt Braun', N'Kiribati', NULL, N'vkekult@nlltsn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (209, N'Sherri Black', N'Sierra Leone', NULL, N'ftchr.mkhjija@rubeps.mdp-hf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (210, N'Karrie Jimenez', N'Sri Lanka', NULL, N'ldhao.nwhzidonyo@bxmdcm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (211, N'Alicia Rojas', N'Indonesia', NULL, N'damfgt.eczy@gdwpja.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (212, N'Carl Sweeney', N'Madagascar', NULL, N'rmiip.zdnz@mjct.lphwo-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (213, N'Alana Ibarra', N'Nicaragua', NULL, N'piindn.jzwxdxz@lzsp.utvuoi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (214, N'Calvin Frye', N'Tunisia', NULL, N'yhgcd.pkmmnc@vloqcydb.yumnri.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (215, N'Craig Zuniga', N'Indonesia', NULL, N'dpbprbu3@fbskoa.-sfvuf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (216, N'Anna Dickerson', N'Panama', NULL, N'iccxbnfk.qekugnpb@wbb-r-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (217, N'Lawrence Aguilar', N'Lesotho', NULL, N'wthiux44@arfc.vxfltf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (218, N'Alberto Merritt', N'Bhutan', NULL, N'rggac665@himiz-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (219, N'Stefanie Elliott', N'Bangladesh', NULL, N'pefwzcvc.dnoqdrfgkf@jclbpm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (220, N'Leslie Odonnell', N'Tunisia', NULL, N'msbr0@zkxymkgmr.vcspzb.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (221, N'Tonia Gordon', N'Western Sahara', NULL, N'clxnj.rkmwo@vfkubj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (222, N'Fredrick Allen', N'Virgin Islands', NULL, N'fpygp.cbpws@blafcv.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (223, N'Kerrie Hahn', N'Slovakia', NULL, N'pcqgh198@ehobb-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (224, N'Jeff Munoz', N'Russia', NULL, N'khrxqxd.wgbsl@pilgww.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (225, N'Clayton Roach', N'Kyrgyzstan', NULL, N'vpsuxydc.jikspj@kdpvquit.sopknr.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (226, N'Frank Norman', NULL, NULL, N'afjbvsdd649@yqllk-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (227, N'Ismael Aguilar', N'Czech Republic', NULL, N'mdmk.gvqtqpez@llrqrr.ozlrua.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (228, N'Rick Shah', N'Kyrgyzstan', NULL, N'bbgwyjh.thbrg@zlwa.ihguux.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (229, N'Jodi Choi', N'Greece', NULL, N'qmtjmpny218@jpqhuo.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (230, N'Jessica Colon', N'Greece', NULL, N'ffhsszc85@nrfrqzwf.xcnkwd.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (231, N'Sherrie Castillo', N'Burundi', NULL, N'rmxdo889@vghpqxylq.pvdoid.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (232, N'Maria Stuart', N'Guinea', NULL, N'dxzvfbh@uvawau.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (233, N'Hollie Espinoza', N'Niue', NULL, N'yvzf.nxcz@arnucd.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (234, N'Mandi Bray', N'Gabon', NULL, N'ghmyllvh.ctsi@ergvrdf.yszbhf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (235, N'Desiree Jenkins', N'Tunisia', NULL, N'vopq721@dxfcslb.kxcjbb.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (236, N'Ben Hopkins', N'Montenegro', NULL, N'smtzifey5@wzrluchsp.qgphzr.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (237, N'Albert Key', NULL, NULL, N'oczcul972@wylnyk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (238, N'Clayton Hancock', N'Samoa', NULL, N'azhcfcs.egyg@euegdtdpk.fthcta.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (239, N'Dion Cowan', N'Syria', NULL, N'eocszoi.anbatvxh@dvnvjw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (240, N'Sonya Abbott', N'Mexico', NULL, N'ijpd@lxlvpy.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (241, N'Jo Price', N'Vanuatu', NULL, N'dbjpnx@ckqstvnp.esxkbh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (242, N'Jami Gonzales', N'Costa Rica', NULL, N'zvydggc.nwmkyudu@lteqh-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (243, N'Clayton Brandt', N'Malaysia', NULL, N'tfqhhwn018@zkiqcp.yupezd.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (244, N'Elton Bell', N'Vatican City', NULL, N'eqchw6@qwmubp.dytuhr.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (245, N'Dewayne Waller', N'Cape Verde', NULL, N'cvlbcis.vlcohf@bbmsu.szcuex.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (246, N'Lara Barber', N'Malawi', NULL, N'yeyu612@uypnmx.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (247, N'Yvonne Bates', N'Kyrgyzstan', NULL, N'bgqlqhr.ynmzrzmxpn@bxtos-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (248, N'Amy Payne', N'Comoros', NULL, N'mqxmqypi.mvipftlz@dqxk.wyiwwy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (249, N'Willie Harrell', N'Denmark', NULL, N'qoiqaj.edhaxbnr@sxgywsnmu.flxiej.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (250, N'Chasity Velazquez', N'Syria', NULL, N'xdlqjpzm.dulrvsfj@spcnp.csfyvm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (251, N'Blanca Kirk', N'Tajikistan', NULL, N'uxscoq.ceizooqe@eahha.-plger.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (252, N'Sophia Lozano', N'Uganda', NULL, N'lyxya@hmyepd.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (253, N'Harry Wu', N'Isle of Man', NULL, N'cuajifmw.zeselqsoqr@aaohzu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (254, N'Krista Collier', N'Monaco', NULL, N'klxed.gctkbfb@-cbgla.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (255, N'Toby Todd', N'Cook Islands', NULL, N'kysy.fsuc@fmandl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (256, N'Sharon Lopez', N'Russia', NULL, N'gqxa387@iw-udd.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (257, N'Jamal Krueger', N'Japan', NULL, N'dnsgdk405@pqqtassqr.z-wgrf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (258, N'Emily Hardy', N'Azerbaijan', NULL, N'jpzi3@yzutdq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (259, N'Eugene Ayala', N'Gabon', NULL, N'fkadl.ldsgg@yueena.gbifbt.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (260, N'Quentin Obrien', N'Croatia', NULL, N'pvjr.wrtxuew@enmjb.pzcdlz.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (261, N'Damion Barr', N'Falklands', NULL, N'xjbdp.wppd@lgtwkzhfs.jqv-wf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (262, N'Lea Watson', N'Rwanda', NULL, N'moavotah.hxwf@dsjhaz.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (263, N'Alex Padilla', N'Azerbaijan', NULL, N'etqmtn1@mapszv.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (264, N'Dexter Wright', N'South Korea', NULL, N'ixuserw.veznonqvc@exquhn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (265, N'Seth Marks', N'Bulgaria', NULL, N'oakl.rpjamv@wuxpdy.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (266, N'Donna Obrien', N'Nicaragua', NULL, NULL);
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (267, N'Maureen Mc Dowell', NULL, NULL, N'xwip29@fyhdlt.uwyguq.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (268, N'Christine Randall', N'Latvia', NULL, N'obvxs3@ncirfh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (269, N'Kristen Contreras', N'Réunion', NULL, N'vpyksj3@rcgpzm.kbsfrp.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (270, N'Camille Snyder', N'Djibouti', NULL, N'xprdqqwf.rdimscbkty@njewwhwp.itrlox.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (271, N'Micheal Yates', N'Réunion', NULL, N'zuwlnh936@wszqbhzt.piedij.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (272, N'Jeannie Sloan', N'Germany', NULL, N'dewyudev889@lpl-sv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (273, N'Lillian Eaton', N'Nepal', NULL, N'fsffn99@hkhi.ouuaed.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (274, N'Spencer O''Connell', N'South Georgia', NULL, N'sbto.xfpoqgoy@rcvjzp.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (275, N'Donnie Rasmussen', N'Trinidad', NULL, N'hjmxallb.mmnucpnt@qbnpde.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (276, N'Robert Snyder', N'Cameroon', NULL, N'ipwcfpgm.edconelecx@wgyzmfww.vajtdm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (277, N'Tyrone Eaton', N'Tajikistan', NULL, N'xnpsmoo.piezcmabsq@caqahjbs.iraydi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (278, N'Karl Santos', N'Haiti', NULL, N'jrkfkq.tsojsl@-umzre.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (279, N'Susan Ryan', N'Andorra', NULL, N'bhgqcb.pniyuaskci@mjbwvv.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (280, N'Tracy O''Neill', N'Slovenia', NULL, N'wmwemxe86@ktdcxk.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (281, N'Anitra Barnes', N'Fiji', NULL, N'cwjqozrf@ohcrdmwwq.fswwap.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (282, N'Susan Mc Intyre', N'Fiji', NULL, N'xkxit.oyymxaa@gernzl.dkbqqu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (283, N'Dora Whitehead', N'French Guiana', NULL, N'bhpy.fnnepoxjt@jhqxyj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (284, N'Lillian House', N'Zimbabwe', NULL, N'vtwrzw.blplcmhar@kwrusdl.la-cwv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (285, N'Billie Hurley', N'Montenegro', NULL, N'njwnhviw.ncxaqgtakp@ennp.e-gspq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (286, N'Tabatha Zuniga', N'Jersey', NULL, N'rvqbo.wopji@ujwlwxp.h-rocv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (287, N'Isaac Kaufman', N'India', NULL, N'xlnhzkd.bjbqx@vugxweun.mmpjzk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (288, N'Cecil Raymond', N'Portugal', NULL, N'erxvelj@nnnjvj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (289, N'Wayne Hernandez', N'San Marino', NULL, N'psntrad@wpjulf.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (290, N'Camille Whitehead', N'Kyrgyzstan', NULL, N'riwrzp.pycu@cjnqyfub.kshrec.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (291, N'Dominick Koch', N'Malvinas', NULL, N'eoycasbn0@vsoqma.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (292, N'Phillip Rush', N'Kyrgyzstan', NULL, N'hbrpj@tvvvye.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (293, N'Cathy Burch', N'Malaysia', NULL, N'bqmdunto9@sbmhwn.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (294, N'Floyd Singh', N'Kuwait', NULL, N'rhcwfy6@mnkktr.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (295, N'Dianna Keller', N'Nigeria', NULL, N'xbyvyy.tjocrvrkjk@onwssm.mgrtpi.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (296, N'Monte Mc Dowell', N'Gabon', NULL, N'ksldyiy18@w-aijx.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (297, N'Oliver Mc Bride', N'Croatia', NULL, N'efdmrjt9@lfsxgi.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (298, N'Jay Walter', N'Bulgaria', NULL, N'aooxq.hqkflb@lhqfye.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (299, N'Cassandra Hendrix', N'Peru', NULL, N'gcefp006@qrgwctl.ergpma.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (300, N'Candace Carlson', N'South Georgia', NULL, N'qchlpw@aamietu.pvbude.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (301, N'Seth Ferguson', N'Lithuania', NULL, N'nounsobo@utik.sskyxm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (302, N'Abel Reynolds', N'Australia', NULL, N'ylkn.bsoj@yqlyxv.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (303, N'Ethan Banks', N'Puerto Rico', NULL, N'yuvmrkk.bpagstcq@aidfkn.lafmaa.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (304, N'Bobbi Mercado', N'Uruguay', NULL, N'xdqxvlno7@fxihve.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (305, N'Victoria Liu', N'Lebanon', NULL, N'uolzgyih.otcu@sfemtt.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (306, N'Shane Case', N'Mauritania', NULL, N'uqfew811@eyoneh.me-qlg.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (307, N'Clarence Heath', N'Eire', NULL, N'pzrhaw.psekqtrqy@huqrhl.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (308, N'Marcie Leon', N'Benin', NULL, N'ltztxzp.kwcs@zuawy.njrueo.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (309, N'Tina Davies', N'Lithuania', NULL, N'hjuw.lqyhkadv@ojxbrxipf.xigyrk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (310, N'Terence Pratt', N'Japan', NULL, N'obbgb38@yqsdpf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (311, N'Yvette Gallegos', N'Germany', NULL, N'tgkbf.lcjzpzekg@iiutjapdh.ddrrvt.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (312, N'Bryan Cooke', N'Guyana', NULL, N'ezwpvq@mtfm-n.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (313, N'Leticia Rasmussen', N'Isle of Man', NULL, N'waxkmb29@teczbe.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (314, N'Jorge Raymond', N'Eire', NULL, N'meojd5@dcthxa.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (315, N'Moses Valentine', N'Andorra', NULL, N'mugkj53@gkujfb.kmf-kv.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (316, N'Harvey Griffin', N'Uganda', NULL, N'unnlib73@uibobjxih.togdq-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (317, N'Clifford Maddox', N'Western Sahara', NULL, N'jloulu@vabzsz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (318, N'Sarah Wheeler', N'Rwanda', NULL, N'msyaxnhk.edlk@-am-xg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (319, N'Alonzo Moore', N'Kiribati', NULL, N'linfguvh5@imam--.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (320, N'Deborah Pena', N'Hungary', NULL, N'udkgw.mxefgv@-bdycx.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (321, N'Diana Haney', N'Qatar', NULL, N'vatr.nwgijqf@kwdu.ijnrtx.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (322, N'Adriana Meyers', N'Uganda', NULL, N'wbzwyh.dhdakiyxl@ycsb-c.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (323, N'Diana Zavala', N'Paraguay', NULL, N'llbxql@nsxmsho.tzakqf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (324, N'Alexandra Mc Carthy', N'Estonia', NULL, N'chdzzt@bknph.toyglk.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (325, N'Ann Li', N'Oman', NULL, N'oajnla.ccjvw@uhdixge.drsrah.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (326, N'Carol Eaton', N'Estonia', NULL, N'qwskzkxi@kglmofdz.bneime.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (327, N'Randolph Finley', N'Saudi Arabia', NULL, NULL);
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (328, N'Paige Fernandez', N'Cape Verde', NULL, N'itnpb.dujk@fxaxc.ffcvcn.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (329, N'Lena Rosales', N'Cape Verde', NULL, N'jmbmfb.gssin@tvtonx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (330, N'Clarence Waters', N'Mozambique', NULL, N'mkgplfx315@xeiejr.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (331, N'Derek Smith', N'Uruguay', NULL, N'uksyjakz7@cymepi.qyixqz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (332, N'Raul Klein', N'Russia', NULL, N'ginyxh.wnvx@dnwjdu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (333, N'Becky Alexander', N'North Korea', NULL, N'avia.avhkb@vcujgm.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (334, N'Kerrie Vasquez', N'Costa Rica', NULL, N'qtlhpu.hveijhrpwt@afkvdh.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (335, N'Lauren Taylor', N'Georgia', NULL, N'czxhfh879@tzoxnkol.nntenj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (336, N'Harold Zhang', N'Denmark', NULL, N'dglky@axpsdu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (337, N'Debra Coffey', N'Malvinas', NULL, N'hgwyr.zyljo@-tgorp.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (338, N'Wanda Gutierrez', N'Guadeloupe', NULL, N'rqbj8@tbogdlr.hrl-wo.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (339, N'Ethan Howard', N'Luxembourg', NULL, N'iwwlpdcx2@pcclbp.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (340, N'Joanna Ellis', N'Antarctica', NULL, N'nxiqdj.uubtgauz@pzrtn.ucrnhn.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (341, N'Ira Robles', N'Cook Islands', NULL, N'usvz.mtdos@dapidl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (342, N'Tanisha Quinn', N'Gabon', NULL, N'nutjdvzr201@evkfgv.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (343, N'Harvey Mc Guire', N'Czech Republic', NULL, N'btaqccfd92@pjylbs.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (344, N'Latonya Mc Millan', N'Grenada', NULL, N'ubfnkn.besrrqcfx@xcodrp.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (345, N'Micheal Case', N'Cape Verde', NULL, N'agutcop.korr@juog.zhtomn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (346, N'Ron Glover', N'Colombia', NULL, N'fxoxhhs.kpdcrcujy@gdjcjs.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (347, N'Shelley Green', N'Australia', NULL, N'nggox@qjjr.ciybhh.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (348, N'Claudia Reed', N'Finland', NULL, N'foad545@zl-cae.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (349, N'Chad Sampson', N'Jordan', NULL, N'axso@aegkxmnas.udsokb.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (350, N'Christa Downs', N'Qatar', NULL, N'sldfxxm050@szlggc.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (351, N'Melody Casey', N'Germany', NULL, N'yzlmkr46@cyyvgi.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (352, N'Sherman Williamson', N'Jordan', NULL, N'imnssn1@rdfnd.kmufso.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (353, N'Darren Winters', N'Niue', NULL, N'zdubqax1@ttxflii.arykua.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (354, N'Claude Moyer', N'Germany', NULL, N'dgpx.sjrsmexm@brarppukg.fhejfo.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (355, N'Gustavo Rivera', N'Belarus', NULL, N'bkpnvian.wdwpf@b-dgol.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (356, N'Rose Roman', N'Micronesia', NULL, N'mekeh@jbknvr.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (357, N'Clifford Spence', N'Guatemala', NULL, N'abochqch597@kwhdph.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (358, N'Duane Galloway', N'Kiribati', NULL, N'ydzecmu51@pnfnhx.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (359, N'Wanda Blair', N'Ethiopia', NULL, N'jzcxdar.auttqyh@vfxe.pzouhb.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (360, N'Shirley Martinez', N'Czech Republic', NULL, N'kzaoewh.dtvnkuq@ybhbaj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (361, N'Dominic Haynes', N'Senegal', NULL, N'nxofik.jttbul@icejyffyv.dn-hyp.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (362, N'Pedro Case', N'Barbados', NULL, N'jjkgu@-wyumx.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (363, N'Kate Odom', N'United Kingdom', NULL, N'ygvph.kpgjsa@qdauqb.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (364, N'Erika De Leon', N'Thailand', NULL, N'ldef@pso-jo.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (365, N'Clarence Le', N'Lesotho', NULL, N'rtwfcoda2@cqqqkj.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (366, N'Tera Shaffer', N'Mauritania', NULL, N'nonqotzl.cdacw@txzezipig.byiyeo.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (367, N'Donna Mc Knight', N'Panama', NULL, N'fipnudok.mkatlprmm@eyhhgw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (368, N'Tracy Blackburn', N'Denmark', NULL, N'uwobyq.gcvqojk@khmths.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (369, N'Randolph Sutton', N'United Kingdom', NULL, N'qakhfngb.ixjccockj@yvnklv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (370, N'Eduardo Ingram', N'Sierra Leone', NULL, N'rmdlbiqm555@aymiex.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (371, N'Tania Mc Guire', N'Honduras', NULL, N'jmsr@rr-grd.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (372, N'Dora Barry', N'New Caledonia', NULL, N'umcxjub.qmmzmjcb@ziqkpi.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (373, N'Harry Burns', N'Ecuador', NULL, N'wohn.eosvtno@hokj.dixfai.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (374, N'Kareem Hill', N'Italy', NULL, N'dbmn@bcoavyqhh.foiive.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (375, N'Rita Ponce', N'Costa Rica', NULL, N'tnrbmo463@sgvgmvi.fspyyc.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (376, N'Andres Duffy', N'Japan', NULL, N'ufhnm4@azpmzy.rnhnbi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (377, N'Fernando Clark', N'Peru', NULL, N'rmvac.cpqlbsyo@ewuiht.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (378, N'Michele Wise', N'Guinea-Bissau', NULL, N'whppb.xvvqv@cpwz.nxjsyr.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (379, N'Gilberto Dickson', N'Benin', NULL, N'noii.jffunoypdw@vwht.liyetm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (380, N'Allan Crawford', N'Liechtenstein', NULL, N'ywuji.xscsxvj@yunq.wiptiw.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (381, N'Wendell Stein', N'Croatia', NULL, N'wpsrd.egvjpa@owkcx.gzzxpa.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (382, N'Micah Turner', N'Liberia', NULL, N'pyqndwna7@ryda-t.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (383, N'Lisa Barker', N'Philippines', NULL, N'xztcspqs.neaqwsc@fnqshc.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (384, N'Norma Preston', N'Italy', NULL, N'avxqhx9@jfwhmc.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (385, N'Trisha Park', N'Gabon', NULL, N'sbcly3@fl-i-p.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (386, N'William Griffin', N'Libya', NULL, N'xfgx.vrnz@dpbnrnxj.ntnnks.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (387, N'Karla Calhoun', N'Bangladesh', NULL, N'bfhmqga@qgpoajdr.mrnrlx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (388, N'Anita Wong', N'Guernsey', NULL, N'tjmdkh@niaex.rtqydm.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (389, N'Edward Prince', N'Benin', NULL, N'baxjspz.opkq@zcvyqqij.uczsgk.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (390, N'Rose Wheeler', N'Puerto Rico', NULL, N'febjkcb7@omtpnrv.onrsqo.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (391, N'Cari Andersen', N'Taiwan', NULL, N'pgllgj08@tlxvww.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (392, N'Trisha Romero', N'Barbados', NULL, N'jkfopyr.isvnmwm@gfhiprdvp.pwwtuh.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (393, N'Jonathon Cooper', N'Bahamas', NULL, N'bwvhrnz.tngqlnvqoa@nluip.ply-eh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (394, N'Allison Rodriguez', N'French Guiana', NULL, N'lfyntix.iimejbdg@kolbycmjf.rgzzaa.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (395, N'Austin Burch', N'El Salvador', NULL, N'agsxz01@kuuxdf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (396, N'Melisa Benton', N'Benin', NULL, N'eakgzsjr41@lfakmpj.yzpauj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (397, N'Derek Burns', N'Guernsey', NULL, N'usfalsq.fqklq@zzjoxt.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (398, N'Nancy Anthony', N'Greece', NULL, N'rpbkrxy.qotxg@o-rgzy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (399, N'Russell Lyons', NULL, NULL, N'jvcuajm@wqeivg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (400, N'Patrick Rich', N'Sudan', NULL, N'vbwxs9@mgsmta.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (401, N'Julie Marshall', N'Montenegro', NULL, N'dyke.xxccj@zhhgfm.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (402, N'Benny Velasquez', N'Lebanon', NULL, N'ujjpzms.xdmaesfq@zuxnpd.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (403, N'Lynn Cain', N'South Korea', NULL, N'zkenox50@hegsef.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (404, N'Alberto O''Connell', N'Guadeloupe', NULL, N'vpcr.yowvtku@eejpon.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (405, N'Judith Hester', N'Nicaragua', NULL, N'ebbsunei@kinvc.xmsgds.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (406, N'Becky Le', N'Guernsey', NULL, N'cnvqqh86@darmjk.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (407, N'Sheryl Johns', N'North Korea', NULL, N'jxronpr98@ilqmtjb.zkxeju.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (408, N'Walter Livingston', N'Croatia', NULL, N'fxsh182@qtyzshjwq.-pbipj.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (409, N'Betsy Andrade', N'Ecuador', NULL, N'idvvm102@ufqikxal.x-yete.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (410, N'Ross Reynolds', N'Bhutan', NULL, N'ymssd.fvgs@gcqjfu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (411, N'Irma Patton', N'New Zealand', NULL, N'ysiao867@nbtmn.fqcprh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (412, N'Toni Merritt', N'Syria', NULL, N'qwhun80@ronwhe.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (413, N'Lorie Terry', N'Western Sahara', NULL, N'hbfke.phqiaa@ufovep.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (414, N'Carol Duke', N'Guinea', NULL, N'bycvc.vkdqe@lcxxua.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (415, N'Jenifer Ruiz', N'Samoa', NULL, N'ujcpt.jibxj@bbmxnvy.kkijul.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (416, N'Cedric Garrison', N'Algeria', NULL, N'viljett@avogfgabw.xnktxy.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (417, N'Terence Medina', N'France', NULL, N'jvhmagp.hihzz@xbwde.tj-wxu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (418, N'Ismael Lopez', N'Haiti', NULL, N'gubgo@grfmss.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (419, N'Rudy Bell', N'Luxembourg', NULL, N'yervwc.gcwmdjuyda@tjzyif.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (420, N'Suzanne Watkins', N'Monaco', NULL, N'xparkl.juksne@xbryxijs.irnesl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (421, N'Marcia Mc Knight', N'Zambia', NULL, N'ceqbfb.eoipwspc@goqnof.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (422, N'Guillermo Benjamin', N'Latvia', NULL, N'bulkqi.lzqesazot@chqbkl.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (423, N'Alex Simon', N'Grenada', NULL, N'avopkusz.tyzu@olnhgp.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (424, N'Joey Noble', N'Bolivia', NULL, N'vfefk.zydu@kgka.apzvai.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (425, N'Anitra Zhang', N'Cuba', NULL, N'nzxjylt.fpnog@zwzgje.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (426, N'Luz Bolton', N'Tuvalu', NULL, N'hfonuzev.eabofjqdpb@lvqevd.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (427, N'Monica Molina', N'French Guiana', NULL, N'zhutcsx@uzmays.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (428, N'Victoria Armstrong', N'Mayotte', NULL, N'qqhpd@wpdzlc.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (429, N'Ericka Moon', N'Uruguay', NULL, N'fhmm18@nztsmknst.rqkgyd.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (430, N'Sonia Le', N'China', NULL, N'qaivkes@gcucihuz.csmtjj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (431, N'Kim Mcfarland', N'Belarus', NULL, N'wfoibv@noz-lh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (432, N'Marci Pierce', N'Bangladesh', NULL, N'pxocad295@-zdosp.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (433, N'Tania Richmond', N'Haiti', NULL, N'hqcqpgke12@g-tejc.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (434, N'Guy Mata', N'Macedonia', NULL, N'glcgoo.tsrihgl@xubdqkj.dsdvne.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (435, N'Annie Gamble', N'Liechtenstein', NULL, N'skrnisv4@pnaohu.iukpat.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (436, N'Jodie Peterson', N'American Samoa', NULL, N'wrpgmyz.uybf@mdyuyq.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (437, N'Wallace Foster', N'Haiti', NULL, N'otsjoh.tqizrb@ppye.hshkbx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (438, N'Jessie Leon', N'Cameroon', NULL, N'ytsecanu.hcdelwz@xzfjsnu.-jylii.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (439, N'Jared Young', N'Austria', NULL, N'wquo@eqbr.glk-lo.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (440, N'Hugh Armstrong', N'Bahamas', NULL, N'kzqiu69@pjnedm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (441, N'Christine Burch', N'Nauru', NULL, N'ugebmdcs.lxukcmq@ghvjfsib.sfgn-k.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (442, N'Grant Bailey', N'French Guiana', NULL, N'fxeert509@boagewzw.icbhzs.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (443, N'Carla Shields', N'Sri Lanka', NULL, N'wjcp9@nkgqrj.mrqfgv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (444, N'Terrence Dorsey', N'Ecuador', NULL, N'qfobcju.repc@vadpio.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (445, N'Neal Mann', N'Kenya', NULL, N'rugviba.ttzbexzfts@nttu.vdbffu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (446, N'Tammi Gillespie', N'Sweden', NULL, N'xhwn8@wissrefkp.fic-l-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (447, N'Stacy Bennett', N'Thailand', NULL, N'vmunzze1@amyjxk.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (448, N'Emily Poole', N'Portugal', NULL, N'eaxvqyto.kmalaoiij@knbshu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (449, N'Kevin Aguirre', N'Gabon', NULL, N'tdayhbv.wbfq@sfhqmkb.biptmu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (450, N'Tanisha Hess', N'Fiji', NULL, N'dzeacjo.eyjminyy@madhaso.pqhivw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (451, N'Alma Frye', N'Venezuela', NULL, N'fllh5@lrcturuj.ph-sdh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (452, N'Demond Robertson', N'Puerto Rico', NULL, N'ycbvdm.imnvbvnw@ameuzn.lfexmg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (453, N'Antonio Navarro', N'Sudan', NULL, N'xtlfl134@nhuudsph.fcbnvr.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (454, N'Bryce Lucero', N'Réunion', NULL, N'nuelc065@jviv.ldlktu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (455, N'Darryl Lester', N'Swaziland', NULL, N'srpj.qyjvsz@crslci.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (456, N'Wanda Elliott', N'Botswana', NULL, N'kvhhj.itzmp@mszypxz.pvk--t.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (457, N'Alexis Browning', N'Burundi', NULL, N'rijahuc110@nfbqf.ldtnri.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (458, N'Peggy Odom', N'Pitcairn', NULL, N'vjmzqm232@psltyz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (459, N'Alice Frederick', N'Bulgaria', NULL, N'fzjoqvm.jxpqo@dkojiz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (460, N'Roxanne Eaton', N'Puerto Rico', NULL, N'nlwlhu.idqkdlzq@kzhcza.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (461, N'Peter Juarez', N'Austria', NULL, N'pmkm.gybfyaibq@lymmtl.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (462, N'Mandy Lowery', N'Belize', NULL, N'uotdkl.lfgavf@ejtsugjju.mbiiv-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (463, N'Jess Trujillo', N'El Salvador', NULL, N'esnv.clxvj@goiijr.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (464, N'Clinton Henry', N'Azerbaijan', NULL, N'oejio.gcjgo@qphrzo.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (465, N'Orlando Carlson', N'Angola', NULL, N'nzgjgna.igdpndm@kfum.zofxs-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (466, N'Rafael Walters', N'Mauritius', NULL, N'qlfrk612@yitl.mvoced.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (467, N'Andrew Conrad', N'Liberia', NULL, N'whuzqhyt.skwtky@ysoervut.ecokgq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (468, N'Linda Santana', N'Kiribati', NULL, N'ujspyd70@tkpzafvn.pzdwat.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (469, N'Kenya Walter', N'Swaziland', NULL, N'ekthgppl.ojwy@llunok.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (470, N'Kate Sandoval', N'Russia', NULL, N'bvfk.xkohoq@nvankfhdv.ekjoyb.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (471, N'Clint Kane', N'Netherlands', NULL, N'ixfkk@dvokcl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (472, N'Phillip Brewer', N'Burkina Faso', NULL, N'znba.xzoecii@vuijuck.pmcbhg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (473, N'Latisha Rosales', N'Germany', NULL, N'yyqznktm48@ptsj.pubqvo.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (474, N'Demetrius Newton', N'Japan', NULL, N'mtlpsh374@av-mqo.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (475, N'Elizabeth Gill', N'Vanuatu', NULL, N'ykkzo.witkuygsy@nxsf-f.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (476, N'Sheldon Benson', N'Panama', NULL, N'pzbdeay.jbpervg@bdmu.aty-wa.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (477, N'Tia Burch', N'Netherlands', NULL, N'eogbive.whsjxdow@fbehvuv.jfzaqw.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (478, N'Adrienne Livingston', N'Belgium', NULL, NULL);
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (479, N'Andy Krause', N'Nigeria', NULL, N'bxqm@gfbteq.ctpmh-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (480, N'Olga Hart', N'Guam', NULL, N'gmuuik.vkabqg@irm-ps.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (481, N'Sidney Camacho', N'Anguilla', NULL, N'twwh68@j-qbaf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (482, N'Darrick Goodwin', NULL, NULL, N'fidptw1@fvmjy-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (483, N'Juan Patel', N'Mayotte', NULL, N'npmteg@gpfoan.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (484, N'Alberto Koch', N'Ethiopia', NULL, N'dczel@qwqsbp.yytozi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (485, N'Teresa Ross', N'North Korea', NULL, N'ogwagruz.xjoiegtus@yqe-np.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (486, N'Loren Fleming', N'Croatia', NULL, N'etvnz.jzcxvxane@qunveqbbp.qzsase.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (487, N'Kirk Garza', N'Guernsey', NULL, N'bvpszw.uscxdb@zgfiod.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (488, N'Tabitha Ibarra', N'Dominica', NULL, N'aqrz@packo.vqalvi.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (489, N'Brandi Sawyer', N'Netherlands', NULL, N'lpfjb@xjrr.euizoj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (490, N'Eddie Atkinson', N'Nigeria', NULL, N'zjvcmqhc931@atssm.eaxelk.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (491, N'Larry Weiss', N'Honduras', NULL, N'wuoiiqvo.iuuo@iedai.wrvyth.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (492, N'Heidi Holland', N'Taiwan', NULL, N'zecy30@zlttjs.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (493, N'Raquel Robinson', N'Nigeria', NULL, N'uexhi@xmjwmp.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (494, N'Kelly Skinner', N'Andorra', NULL, N'dsvc.gisbvmch@entzrw.cvjlnl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (495, N'Ashley Williamson', N'Greenland', NULL, N'wrvgan.vqzq@evqk.szwbfg.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (496, N'Jared Lucas', N'Albania', NULL, N'gowsw9@acbqqx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (497, N'Belinda Fox', N'Malawi', NULL, N'guero.svmzoozev@zxdmnzjn.grahzt.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (498, N'Kristen Garza', N'Antarctica', NULL, N'anozaodh270@jiylot.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (499, N'Stacie Nolan', N'San Marino', NULL, N'ibhwaudz.yehshyizek@tmikrz.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (500, N'Rhonda Rocha', N'Cyprus', NULL, N'yguigys.nzaltdtysb@powedg.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (501, N'Dan Rich', N'Thailand', NULL, N'pceynb.yljgqwrk@-jolzy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (502, N'Melanie Peters', N'Guinea-Bissau', NULL, N'jrxdbrze.ucyskjzg@mtxlgl.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (503, N'Todd Chen', N'Israel', NULL, N'yddgwis83@ligpvu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (504, N'Roger Pennington', N'Switzerland', NULL, N'fmsg6@vojofi.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (505, N'Jeffery Guerra', N'Malvinas', NULL, N'fpajxe.mbkqvmsykt@-nqbha.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (506, N'Sidney Guerrero', N'Netherlands', NULL, N'hrfaa1@ihwfwq.bpjxld.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (507, N'Misty Acosta', N'South Korea', NULL, N'wnryx@suvjqtwnp.kjnur-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (508, N'Melissa Madden', N'Isle of Man', NULL, N'lqxvntj9@nldunbv.kwmjvi.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (509, N'Vernon Hinton', N'Indonesia', NULL, N'itzyavl.whbanfyhf@htgq.-uocnz.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (510, N'Stephanie Parks', N'Saudi Arabia', NULL, N'cvuyh0@qutuyq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (511, N'Travis Hunt', N'Canada', NULL, N'qbczpmit846@jyrkzz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (512, N'Scott Mc Cormick', N'Lebanon', NULL, N'yscpwl@kicobf.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (513, N'Tonia Glover', N'Armenia', NULL, N'ojred@wffpcv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (514, N'Rebecca Soto', N'Aruba', NULL, N'hmwmiuez.ozvwldjkl@obvdbi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (515, N'Dora Wyatt', N'Senegal', NULL, N'yhnrl.kdgpm@ugrnaucf.jmisja.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (516, N'Valerie Nash', N'Panama', NULL, N'kohzyai772@lpihp.nivosn.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (517, N'Martin Powell', N'Liberia', NULL, N'bcjjvaey.wfjdzbjyo@tjblur.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (518, N'Seth Carson', N'South Georgia', NULL, N'sgjye@ldqmsbk.cjiueu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (519, N'Clint Blackwell', N'Moldova', NULL, N'birgxa210@evasamkx.airarg.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (520, N'Trisha Dennis', N'Sweden', NULL, N'mljk204@ognax.yoiadg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (521, N'Hollie Norton', N'Niue', NULL, N'mgipw336@wbvsqp.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (522, N'Damon Thomas', N'Greenland', NULL, N'jjoht.skwie@ptymoc.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (523, N'Nikki Gibbs', N'Swaziland', NULL, N'xvmugvtp2@cr-vxo.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (524, N'Dianna Barnett', N'Sierra Leone', NULL, N'mjki07@xwfltvysx.uksxvn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (525, N'Charlie Arellano', N'Kyrgyzstan', NULL, N'xqrojekl13@goib-r.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (526, N'Kari Miranda', N'Taiwan', NULL, N'xfrlebqn0@niin.ahtlon.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (527, N'Randy Nash', N'Virgin Islands', NULL, N'eens.cstmx@huo-pi.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (528, N'Eddie Roach', N'Bhutan', NULL, N'tgbp6@qdefxmz.aexdtv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (529, N'Terrell Berry', N'Western Sahara', NULL, N'atnflz0@mdme.ggvutu.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (530, N'Stanley Matthews', N'Jamaica', NULL, N'pgodttz0@de-ryp.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (531, N'Julian Golden', N'Italy', NULL, N'omqobm.apvfifq@aviknvc.gfbgdw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (532, N'Shana De Leon', NULL, NULL, N'xtdpz84@fuozpugxu.b-qnat.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (533, N'Mindy Friedman', N'Niger', NULL, N'fvtrn45@olyd.xsrgmm.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (534, N'Christine Miller', N'Sweden', NULL, N'kxvt930@ohogencf.zfhdxv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (535, N'Lorena Floyd', N'Tajikistan', NULL, N'byhsyvg.sanmqnj@mjlntj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (536, N'Jonathan Russell', N'San Marino', NULL, N'zeprvqmq756@qpvcrjjs.nhhfvn.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (537, N'Corey Simon', N'Western Sahara', NULL, N'lxwc@awjloa.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (538, N'Adriana Todd', N'Montserrat', NULL, N'cvyxipsq1@ftswwd.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (539, N'Raquel Brooks', N'Paraguay', NULL, N'epszs.zgjmjhd@hpvefq.ti-ubr.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (540, N'Luke Herring', N'Poland', NULL, N'wfkxg@eqffqc.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (541, N'Eduardo Terry', N'Anguilla', NULL, N'tcpgioko@vkhqqp.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (542, N'Fred Pope', N'Haiti', NULL, N'ftki@jdbfys.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (543, N'Alfred Dougherty', N'United Kingdom', NULL, N'aloraj38@ippbz.w-rffl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (544, N'Kenneth Bryant', N'South Georgia', NULL, N'eawj.csqeblvwsd@uefuna.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (545, N'Gina Clark', N'Sweden', NULL, N'vhxtf110@eyrq.kzni-h.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (546, N'Christina Marks', N'Lithuania', NULL, N'dqiojmu@vxzzi.rrrzyv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (547, N'Rachael Ramsey', N'Timor-Leste', NULL, N'wccsj.imbl@unpxdq.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (548, N'Lora Hartman', N'South Korea', NULL, N'blzfs8@uuynjsjq.umjxnm.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (549, N'Misty Parker', N'Morocco', NULL, N'dbcu8@bmqnil.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (550, N'Ben Krause', N'Dominica', NULL, N'qzrh@ebgrnl.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (551, N'Roger Nichols', N'Nepal', NULL, N'lmuej.dtsqwzylb@xnjpzeogz.nccpuy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (552, N'Stephen English', N'Macao', NULL, N'rana.nlhqogr@noejwn.pcppoq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (553, N'Clayton Klein', N'Peru', NULL, N'bawokdnw.boxxr@hppapo.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (554, N'Jeanine Rivas', N'Kazakhstan', NULL, N'akkkfzx.pokdvjasn@ztrlwt.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (555, N'Alex Potter', N'Tunisia', NULL, N'zzllqfjt48@qidit.foib-k.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (556, N'Leticia Hogan', N'Malvinas', NULL, N'synltxw179@xfbtqh.ihnztt.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (557, N'Fredrick Sanchez', N'Martinique', NULL, N'ikfvc900@jezp.aqrcag.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (558, N'Carey Pena', N'Luxembourg', NULL, N'eiqzladl.sncjp@arjksd.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (559, N'Darlene Waller', N'Nauru', NULL, N'esds.dlsyroyob@tjhctsb.v-ojrl.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (560, N'Natalie Harrington', N'Iceland', NULL, N'bhiasdo.jkxejmqgaz@vk-atq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (561, N'Victoria Hampton', N'North Korea', NULL, N'bbmngw1@vr-jgd.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (562, N'Caroline Shields', N'Nigeria', NULL, N'nydqmi839@hazhyi.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (563, N'Debra Farmer', N'Pitcairn', NULL, N'gxdjkz@xyesp.j-e-qi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (564, N'Vickie Lutz', N'Jamaica', NULL, N'sdnqbbiu.hbzhcjxkvp@hpmbyyewv.lzqgks.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (565, N'Danny Bartlett', N'Vietnam', NULL, N'kcbdknyc.dgnwd@ydzbjq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (566, N'Katrina York', N'Guam', NULL, N'kqaqvyep.yzdezcvzi@ipwzlm.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (567, N'Candace Ellison', N'Libya', NULL, N'xamay@cxzqrr.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (568, N'Janette Griffin', N'Myanmar', NULL, N'ruexg26@eqjlpvyem.edbdjw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (569, N'Evan Manning', N'Chile', NULL, N'xrxrh.kxqpe@ywtutl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (570, N'Mark Frederick', N'Fiji', NULL, N'tnst0@nvlsjc.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (571, N'Shanna Alexander', N'Sierra Leone', NULL, N'oseyioh@lodzkcxj.nhches.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (572, N'Kenny Tapia', N'Belgium', NULL, N'hpothle.xlzkppkwh@wbqmtmv.owsoly.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (573, N'Shelley Bauer', N'Seychelles', NULL, N'qmecyff45@slxkrl.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (574, N'Krystal Bradshaw', N'Benin', NULL, N'cauq.iewnlshtj@mrvlzixw.wkvdtl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (575, N'Hilary Gibbs', N'Martinique', NULL, N'omjmzax8@lycuffuk.crwtlh.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (576, N'Billy Hansen', N'Lesotho', NULL, N'stzcyfw.mrxli@rayib.orfvku.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (577, N'Dorothy Schultz', N'Portugal', NULL, N'nrasy157@msdmbufcc.jngteh.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (578, N'Jonathon Osborne', N'Liechtenstein', NULL, N'vbgayzxs65@c-lvot.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (579, N'Bernard Perez', N'Zambia', NULL, N'plqdh19@kxcult.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (580, N'Dante Yang', N'French Guiana', NULL, N'ijxlpx22@ciemu.vrkgej.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (581, N'Marisa Ward', N'Mexico', NULL, N'dhzgzcl26@fcaexo.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (582, N'Clinton Keith', N'Argentina', NULL, N'csqzcxle563@k-gfhy.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (583, N'Alejandro Harrington', N'Guinea-Bissau', NULL, N'vvip.chutbaoi@eazj.djrlfp.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (584, N'Jenny Nielsen', N'Tajikistan', NULL, N'itgeu.tivuzxtwi@btibhy.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (585, N'Johnathan Everett', N'Guatemala', NULL, N'rlqd8@zuwuma.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (586, N'Shannon Shaw', N'Turkey', NULL, N'eeke3@nkgglh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (587, N'Rachel Li', N'Portugal', NULL, N'etce022@wnoref.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (588, N'Felicia Reyes', N'Croatia', NULL, N'drgxg14@nlfwiicr.chycpw.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (589, N'Nancy Mata', N'Uruguay', NULL, N'ztcaion@uawqwb.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (590, N'Mark Taylor', N'Greece', NULL, N'rrgjcolq.chkob@hefxr.jlgwqf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (591, N'Allen Ochoa', N'Cyprus', NULL, N'bguessjz@mvnkf-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (592, N'Shari Snyder', N'Kyrgyzstan', NULL, N'pxee.wxwrvkdrbb@imhgri.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (593, N'Jerrod Woods', N'Virgin Islands', NULL, N'coyw.psldbp@vldubo.vuluwq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (594, N'Latanya Powell', N'Georgia', NULL, N'iguga90@ukfxaaesr.dxhjif.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (595, N'Carl Mc Cormick', N'Armenia', NULL, N'btzlcd.jeqmmdtwt@wltsym.cimwrt.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (596, N'Darin Johns', N'Guinea-Bissau', NULL, N'yhejib.racej@lqepwahba.h-otml.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (597, N'Bridget Welch', N'Nigeria', NULL, N'zemr@sbswgj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (598, N'Bryon Stafford', N'Lithuania', NULL, N'bfndsmq390@engh.vqsfga.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (599, N'Dianna Rivera', N'Swaziland', NULL, N'fjerxxj.zsenognz@ltydp-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (600, N'Lea Shaffer', N'Luxembourg', NULL, N'oizfcse@bdafwo.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (601, N'Abigail Espinoza', N'Albania', NULL, N'whjfgknn.eoqxqujit@ibjngu.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (602, N'Julie Camacho', N'Falklands', NULL, N'nbqcydy775@eslben.wouxpn.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (603, N'George Leblanc', N'Niue', NULL, N'rzqe154@rpgoz-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (604, N'Lillian Wheeler', N'Greece', NULL, N'yrbfp.qnveiptelt@bozdajl.qpzvxi.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (605, N'Eli Koch', N'Jamaica', NULL, N'hquaibk.gkexl@uofdyn.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (606, N'Kerry Hess', N'Mali', NULL, N'ezma.hyum@zdbzch.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (607, N'Guadalupe Kelley', N'Poland', NULL, N'yhyft316@oyvjo.dszlik.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (608, N'Gloria Serrano', N'Montenegro', NULL, N'wqmfaqch.ahgj@vcdbf-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (609, N'Damien Galvan', N'Timor-Leste', NULL, N'kteru@tgjvxq.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (610, N'Bonnie Andersen', N'Italy', NULL, N'hbyjh@qffluv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (611, N'Arlene Mitchell', N'South Africa', NULL, N'ugmlm@ncodxl.lyyijc.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (612, N'Arthur Hancock', N'Australia', NULL, N'xuwqhey004@vrywqqrf.suu-vx.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (613, N'Krystal Bird', N'Macao', NULL, N'rqcnro456@uaeecg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (614, N'Edith Ferrell', N'Greenland', NULL, N'mzsryd.ddncqkt@ddprd.-stxtp.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (615, N'Kurt Martinez', N'Somalia', NULL, N'poxer@msikck.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (616, N'Jeffrey Stephenson', N'Nauru', NULL, N'hanaevu@eebwik.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (617, N'Sheri Gordon', N'French Guiana', NULL, N'tgcuwk.zuqwhhnlph@sbvtrw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (618, N'Blake Lucero', N'Spain', NULL, N'jwzafwse664@nhvqxr.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (619, N'Casey Daugherty', N'Barbados', NULL, N'csmuqkj857@prloj.iqb-ag.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (620, N'Kristian Parker', N'Australia', NULL, N'vfpntp.tcctwcqs@ssrdfi.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (621, N'Annette Camacho', N'Namibia', NULL, N'ylqltjc.uhaanxiyj@kfajcc.ntrzfe.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (622, N'Tanya Joseph', N'French Guiana', NULL, N'mqhis.vwlx@vjewxs.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (623, N'Yvonne Schmidt', NULL, NULL, N'khjqv.pubvrxlrq@ylkex.disjlc.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (624, N'Tisha Lopez', N'North Korea', NULL, N'iybjxr.ugbkchikso@tohfie.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (625, N'Duane Medina', N'Spain', NULL, N'vudrsi@tixwqecn.w-hqxf.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (626, N'Lisa Fitzgerald', N'Azerbaijan', NULL, N'upvas20@suyjbkv.fxxdcw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (627, N'Nicole Giles', N'Greece', NULL, N'mndfk.ojnhae@p-suhy.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (628, N'Toni Powers', N'Bhutan', NULL, N'gctyvwl.qowtxxzee@ndvj.hhcjau.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (629, N'Terry Campbell', N'Lesotho', NULL, N'gwdr.sxudk@vrcspc.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (630, N'Lamont Hooper', N'Australia', NULL, N'tdgjf3@vwbmbuipk.atzkta.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (631, N'Micah Hinton', N'Congo', NULL, N'arlrd7@jhdpla.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (632, N'Kirk Gallegos', N'South Georgia', NULL, N'pjril8@dwpczy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (633, N'Tim Cook', N'Czech Republic', NULL, N'rdtxz@cmlhyvam.yrfjxf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (634, N'Corey Vargas', N'New Caledonia', NULL, N'parfhg@zrjilku.jdrf-o.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (635, N'Randal Porter', N'Latvia', NULL, N'zqlh3@xizug.nojaut.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (636, N'Darin Castaneda', N'France', NULL, N'vpgvjwj.olgricflhy@auwc-c.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (637, N'Randal Villa', N'Gabon', NULL, N'oxcjk.zsaojy@jalfmfp.vzstuj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (638, N'Raul Holder', N'Haiti', NULL, N'sriorjw3@hjfpv.mcoyel.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (639, N'Irene Moss', N'Argentina', NULL, N'gjrxxpa.spsuz@nbzvfmtdy.wnutlx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (640, N'Autumn Downs', N'Jersey', NULL, N'cmqumqs.nzconal@mceuqnyms.wafscn.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (641, N'Drew Rowland', N'Slovenia', NULL, N'nspid.gevv@jiikmb.wcvzye.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (642, N'Jack Roy', N'Costa Rica', NULL, N'hhzbqk.odzpv@drizntx.qlotjw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (643, N'Cheryl Lamb', N'Brazil', NULL, N'xwmyxwu.kpuhnmnnts@gfsjzi.aqnxyt.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (644, N'Dylan Warner', N'Germany', NULL, N'ikmgw.cedad@fpcguq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (645, N'Tammy Joseph', N'Macedonia', NULL, N'oxnfs@nksdbg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (646, N'Jody Shepard', N'Lithuania', NULL, N'akcogz9@tryk.nvosqx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (647, N'Lester Schwartz', N'Cape Verde', NULL, N'mimsfxe8@mfhyho.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (648, N'Matthew Larson', N'Uzbekistan', NULL, N'zxdpzqqg.ucaxb@mjbfoc.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (649, N'Sheila Chaney', NULL, NULL, N'dphnqkce51@pgxpx-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (650, N'Omar Vance', N'New Caledonia', NULL, N'qejluep.uhlwaisd@ysqmu.uuvhze.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (651, N'Rachael Peterson', N'Lesotho', NULL, N'wzdeep.mwuwlw@flohtn.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (652, N'Mason White', N'Iraq', NULL, N'pvaju.plyzbfoy@iftsxd.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (653, N'Charlotte Massey', N'Bahamas', NULL, N'xcnqoti.oipouym@mxnsrov.jhgyrr.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (654, N'Amber Molina', N'South Africa', NULL, N'wkxzxfqb.pdfo@olrbrekz.-i-smw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (655, N'Christa Daugherty', N'Isle of Man', NULL, N'kyopfo497@hv--kf.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (656, N'Ty Watkins', N'Singapore', NULL, N'msay@igbyov.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (657, N'Virgil Greer', N'Thailand', NULL, N'rixkv700@zsaqqn.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (658, N'Cherie Schmitt', N'Pitcairn', NULL, N'orarjqc.admfhj@pehmhxcf.pqelga.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (659, N'Bradley Giles', N'Montserrat', NULL, N'fzigbe1@fisj.hajpsf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (660, N'Dana Jensen', N'South Korea', NULL, N'mzal705@itbnzd.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (661, N'Cary Clark', N'Estonia', NULL, N'wdzbxhfd3@ektadq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (662, N'Shelley Boyd', N'Benin', NULL, N'iwqn.ggnj@bxtmy.dgamkg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (663, N'Jack Hayden', N'Israel', NULL, N'eiimvoyg.jnhhywshw@hqgcbl.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (664, N'William Hawkins', N'Dominica', NULL, N'vmjk@-oxvvh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (665, N'Tanisha Petersen', N'Mali', NULL, N'kuwjetdk86@sbfituz.vl-yrs.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (666, N'Bryce Carson', N'Peru', NULL, N'badesipj.jzffagxqwv@orchyj.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (667, N'Kristie Grant', N'Montserrat', NULL, NULL);
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (668, N'Colby York', N'Montserrat', NULL, N'bklefvo.klvpsl@qltb.wckokk.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (669, N'Bernard Mc Connell', N'Iran', NULL, N'jfanzy.zerbzljvxw@kiypeanht.jbvfaf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (670, N'Pamela Day', N'Argentina', NULL, N'smlwqhca75@dx-afk.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (671, N'Herman Nelson', N'Armenia', NULL, N'kghi.ftkdbv@rorrn.zbnd-u.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (672, N'Natalie Neal', N'Macao', NULL, N'gzzj.cfoim@haqov.kfljoy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (673, N'Ashley Hamilton', N'El Salvador', NULL, N'isdi.inkdsd@mzjfa.qaxpdj.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (674, N'Roberto Krueger', N'El Salvador', NULL, N'upkkm.mkzmv@qnwra.tl-ixw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (675, N'Cheri Steele', N'Hungary', NULL, N'vndpeqt.hqqxz@tdwwlj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (676, N'Robert Paul', N'Falklands', NULL, N'ktxhob4@wwwrva.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (677, N'Traci Dawson', N'Sweden', NULL, N'oajvu.qtzlul@ejtkfr.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (678, N'Cody Ho', N'Libya', NULL, N'ekirmwmb.pelayc@ltqz.ebeqga.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (679, N'Fred Dominguez', N'Virgin Islands', NULL, N'cuzell729@vpddlq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (680, N'Shirley Mathews', N'Cameroon', NULL, N'galesdp191@jmvmqes.mrinjm.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (681, N'Emily Clay', N'Greece', NULL, N'vkofwu.tiqxnbymci@izaxq.nsvcta.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (682, N'Donald Lindsey', N'Tonga', NULL, N'kppvq.vtin@kswlah.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (683, N'Lucas Weber', N'Haiti', NULL, N'vkrpifve.ortrjw@pvmfr.vic-yr.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (684, N'Erin Frey', N'Kyrgyzstan', NULL, N'xpoey30@tybksj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (685, N'Saul Beasley', N'Zimbabwe', NULL, N'irnqptht.vfxwuuedfx@ftvbylt.jpymjb.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (686, N'Norma Warner', N'New Caledonia', NULL, N'ylqm24@digp.bdxluv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (687, N'Julie Saunders', N'Bhutan', NULL, N'vazs34@edtgna.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (688, N'Cary Houston', N'Afghanistan', NULL, N'jtbhkr.vimppdj@mioadx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (689, N'Terrance O''Neill', N'Sierra Leone', NULL, N'yblkvr.hlvtoph@la-bua.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (690, N'Colleen Valenzuela', N'Sri Lanka', NULL, N'larjlews.qjbzrqc@oxgxb.hsvihc.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (691, N'Christi Watts', N'Monaco', NULL, N'gjqee.yaqcrormk@njggedpsc.-ioipt.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (692, N'Allyson Obrien', N'Mexico', NULL, N'alykl.pukd@kygpqi.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (693, N'Irma Bowen', N'Panama', NULL, N'momtuxrc.uwwjzccxrj@eomepk.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (694, N'Katina Gallagher', N'Malta', NULL, N'ykuko.qqrfnbi@kbzfo.rppciw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (695, N'Bill Hardy', N'San Marino', NULL, N'iguac480@gzd-hw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (696, N'Neil Morales', N'Grenada', NULL, N'uolce1@noi-iz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (697, N'Colleen Montoya', N'Hong Kong', NULL, N'fyryfwoc4@lqnutu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (698, N'Adrian Mayo', N'Vanuatu', NULL, N'xrxr0@qfhhricw.ombszs.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (699, N'Dustin David', N'Moldova', NULL, N'byvgpe327@inafc.gnuhly.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (700, N'Denise Shelton', N'Montserrat', NULL, N'fterelw.gaabhdjbip@-amxmx.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (701, N'Barry Barron', N'Tunisia', NULL, N'qihdxvk5@ujteae.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (702, N'Jermaine Ramsey', N'Tonga', NULL, N'kgdjxz6@nwfmys.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (703, N'Cesar Buck', N'Russia', NULL, N'lsglttql.ivixpwje@xpslvy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (704, N'Alberto Bautista', N'Tunisia', NULL, N'owvmebos@gookjy.qgjcst.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (705, N'Melisa Olsen', N'Montenegro', NULL, N'vzuqumpx.vqgjwro@zjahbw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (706, N'Charlene Harrington', N'Venezuela', NULL, N'tetcs.ssje@qqvxng.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (707, N'Alison Lindsey', N'Cape Verde', NULL, N'kspzlrv.stfvws@ccjqdij.ehsfko.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (708, N'Alisa Nguyen', N'Somalia', NULL, N'jimddh.ybrljhuxvn@tqgjgvfi.nfcctl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (709, N'Kristin Dalton', N'Italy', NULL, N'whugisc.uxov@dktt.bxhbnz.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (710, N'Monica Ho', N'Cambodia', NULL, N'nhqv9@ykxesi.hugcjz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (711, N'Frederick Johnson', N'United States', NULL, N'sldzzssj16@hdmqnmivy.ogusrg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (712, N'Dan Clark', N'Iceland', NULL, N'opcvny@pwoswfncp.lgsxmt.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (713, N'Claude Cross', N'Qatar', NULL, N'yzqaw.ozmqoipfgf@wkofp.rahxeh.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (714, N'Monte Vasquez', N'Jordan', NULL, N'pzgkoa.igbmbk@lrlxog.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (715, N'Chandra Harrell', N'Liechtenstein', NULL, NULL);
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (716, N'Dena Novak', N'Guinea', NULL, N'bjeot.exasq@q-webh.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (717, N'Suzanne Pearson', N'Puerto Rico', NULL, N'pheglnvv.qnjfwkxq@parg.pakaie.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (718, N'Vincent Clayton', N'Uzbekistan', NULL, N'ytxjmg00@lmle.hkwhno.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (719, N'Dan Weeks', N'Ecuador', NULL, N'eumk.dqyklz@kfonzhg.dpgo-t.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (720, N'Caleb Meadows', N'Togo', NULL, N'kfhkhlu.lgjnbafly@tapiso.wcepjl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (721, N'Rebecca Hammond', N'Monaco', NULL, N'grqczlpg.wccpcdbtnn@zssuxv.uxxwat.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (722, N'Marcella Boone', N'Montserrat', NULL, N'vbfe.hvmohacoqy@qrxjen.dsczea.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (723, N'Demetrius Adams', N'Singapore', NULL, N'hgrhjq.xggquz@ytlcvxlw.kphdvf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (724, N'Juan Patterson', N'Mauritius', NULL, N'muhzru.zadywyfmwa@sskvup.-ena-s.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (725, N'Bradley Meza', N'Jordan', NULL, N'ezhhzla.hywl@hvux.tjldbv.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (726, N'Clarissa Randall', N'Kyrgyzstan', NULL, N'lydf.bnpsmd@lmwslq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (727, N'Daphne Goodman', N'South Africa', NULL, N'gfvmpun141@etev.irbgtz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (728, N'Brandy Dyer', N'Peru', NULL, N'yhij1@jd-g-l.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (729, N'Jennifer Wang', N'Latvia', NULL, N'rpnnido.apdybntw@wtcpdg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (730, N'Alma Clarke', N'Australia', NULL, N'avbifpy34@utampn.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (731, N'Audrey Charles', N'Tanzania', NULL, N'qhklqpq.ifbunvfrjo@ckkyrb.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (732, N'Elizabeth West', N'Togo', NULL, N'cothajnr.zhojzfo@xvugzzjn.zmznpl.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (733, N'Lucas Boyd', N'Trinidad', NULL, N'muteh.vosku@khvcgiit.qwqrjo.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (734, N'Joel Osborne', N'Haiti', NULL, N'dlfst.qhaklhzslt@snepl.mchqxj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (735, N'Kari Gould', N'Dominica', NULL, N'agifnqss@iard.xgxtdy.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (736, N'Joshua Ho', N'Israel', NULL, N'ahmuz1@skfflzzb.gmklld.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (737, N'Jeanne Powers', N'Cameroon', NULL, N'cjiv45@xnpruysy.zrvxtc.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (738, N'Lydia Summers', N'Kiribati', NULL, N'gpuaqn7@kyusctc.ppsltn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (739, N'Douglas Lucas', N'Taiwan', NULL, N'hglorp.yofhzfdax@ufzter.cyncal.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (740, N'Jocelyn Burns', N'Angola', NULL, N'dghluucp.nvokmso@qghmgx.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (741, N'Jami Marks', N'Latvia', NULL, N'xruntc.wsmmtspffq@tlvonl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (742, N'Walter Orr', N'Gabon', NULL, N'vtao.eyzzutqi@b-gyqb.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (743, N'Raymond Mc Connell', N'Mayotte', NULL, N'bbslv@cgdsxu.nrefvb.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (744, N'Sandy Baker', N'Nicaragua', NULL, N'wwnnep4@qptctzn.namfdf.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (745, N'Ronald Higgins', N'Togo', NULL, N'zxbvzq9@byynqj.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (746, N'Alberto Blake', N'Cook Islands', NULL, N'vuplgixw53@eevknnzi.bamkfo.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (747, N'Ashley Costa', N'Spain', NULL, N'wtbb.lvnbuxek@tuuthwxe.pmjswq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (748, N'Kristi Turner', N'Egypt', NULL, N'ospf7@zmfkas.grlutn.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (749, N'Charlie Huff', N'Armenia', NULL, N'woby644@ruamgb.sxkzbo.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (750, N'Lakisha Mason', N'Iraq', NULL, N'lffmc.tismv@ibsjkax.eesjvb.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (751, N'Yolanda Ponce', N'Morocco', NULL, N'lldi.fzyqxar@fagoif.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (752, N'Floyd Craig', N'Jamaica', NULL, N'tvezztse.lharzuww@tcwplk.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (753, N'Theodore Russo', N'Poland', NULL, N'ombrsgk.mffgmgs@tobmtnn.kqyono.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (754, N'Angelique Mc Guire', N'Pakistan', NULL, N'pehupuh36@hwejaryhb.ncivto.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (755, N'Chanda Huynh', N'Algeria', NULL, N'rzxw48@oeiw-e.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (756, N'Abigail Summers', N'Germany', NULL, N'tenwi4@eynxik.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (757, N'Sherman Edwards', N'Belize', NULL, N'gluuyd.swkqce@utkuqw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (758, N'Yesenia Miles', N'Congo', NULL, N'qurat.xxmys@fjdqiq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (759, N'Lorie Huff', N'Kiribati', NULL, N'obgodqaf.ceddlsxb@tqgzzum.q-mrpn.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (760, N'Israel Mc Carthy', N'Botswana', NULL, N'tfnfx.opvwdy@hpojx.gohczo.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (761, N'Quentin Kaiser', N'Cambodia', NULL, N'koqw.snwo@rjeyjbegf.adiumq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (762, N'Lamont Sanders', N'Kenya', NULL, N'ydtrfgfg0@zhxcxj.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (763, N'Eugene Glass', N'Grenada', NULL, N'xjprh.nalbhuq@-dysbz.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (764, N'Melinda Graves', N'Haiti', NULL, N'kjbvlrp@udzxsttbc.mzikqc.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (765, N'Jeremy Morales', N'Estonia', NULL, N'qqysjh.qcjvvll@d-gfyi.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (766, N'James Mora', N'Argentina', NULL, N'ixksku.vfrb@sygdr.fcbnsg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (767, N'Rosa Conley', N'Lesotho', NULL, N'lfrhbebj.fhuza@ockhi.vrdgev.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (768, N'Karin Tucker', N'Guernsey', NULL, N'dhlkpoja.jkmyjx@wtefcudgw.wwwnrt.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (769, N'Erika Barry', N'Cyprus', NULL, N'jokr1@xnxhg-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (770, N'Jonathan Roberson', N'Bahrain', NULL, N'cvxf.jrtdavuss@ossejq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (771, N'Andrew Delacruz', N'Cuba', NULL, N'vfsyhqw.pxeush@pjew.euaysh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (772, N'Joey Black', N'Estonia', NULL, N'sexvv7@dbedus.wkqftg.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (773, N'Blanca Hawkins', N'Bahrain', NULL, N'raxxjx.wwtgywf@ewbuzbaj.vwsnyy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (774, N'Lindsay Shepherd', N'Cuba', NULL, N'dbsvcpp.gblqzefz@ussyxo.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (775, N'Ruben Rodgers', N'Isle of Man', NULL, N'rsiyuert4@lfquyxsw.mnhngn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (776, N'Sherrie Phelps', N'French Guiana', NULL, N'vgcoxxzi92@oodiob.yqgeze.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (777, N'Kenneth Morales', N'Anguilla', NULL, N'hxdic.zsnhqmsqu@-ztjy-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (778, N'Misty Phillips', N'Cambodia', NULL, N'wpvj.frzjvx@iplufk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (779, N'Tami Conley', N'Niue', NULL, N'anoheux.dyea@ioolus.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (780, N'Bridget Choi', N'Eritrea', NULL, N'tukq@ygpoh.qnjubk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (781, N'Ricky Bolton', N'Nepal', NULL, N'tptl698@ovmuds.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (782, N'Greg Stephens', N'Micronesia', NULL, N'jayka.ybbaqvg@uxsvyb.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (783, N'Staci Allison', N'Niger', NULL, N'bvtzetg639@rongox.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (784, N'Shawna Meyer', N'Azerbaijan', NULL, N'xial.aevgapifc@iuzndx.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (785, N'Sonia Lambert', N'Jordan', NULL, N'pfdhrnb949@--yvbx.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (786, N'Abigail Schmitt', N'Jordan', NULL, N'mmzn937@ekaxwesy.dgrpap.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (787, N'Aaron Holt', N'Comoros', NULL, N'pivy7@cgzoud.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (788, N'Nathaniel Chang', N'Czech Republic', NULL, N'nizcb.ycrfujmq@tlog.rhgoal.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (789, N'Melinda Padilla', N'Guinea', NULL, N'kdqwnh.nrlzz@wzqqsp.slmjqq.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (790, N'Yvette Dudley', N'Turkey', NULL, N'pxzohb93@gtdhdrvkp.vgxije.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (791, N'Yvette Shannon', N'Greece', NULL, N'qfzaboal.smrggmuz@gzvlyfcr.yrybws.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (792, N'Nathaniel Patel', N'Venezuela', NULL, N'frphsyks5@pkwfwrk.bwlhuu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (793, N'Andres Mcfarland', N'Afghanistan', NULL, N'kvnai.txobksvm@eigbx-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (794, N'Charity Sexton', N'Russia', NULL, N'pdvd.drys@zb-cbh.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (795, N'Donovan Howard', N'Taiwan', NULL, N'zvhjy.lmrmvm@klqyq.ttbolq.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (796, N'Aisha Hines', N'Andorra', NULL, N'dzpskwt.ehirehg@ujprmj.seadum.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (797, N'Charlotte Berry', N'Vanuatu', NULL, N'dirwdb@kphfom.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (798, N'Benjamin Cobb', N'Cook Islands', NULL, N'wwssmn766@shvnwp.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (799, N'Terrance Bradford', N'Hungary', NULL, N'omkb.tjlqpihqdu@eqci.gwhshm.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (800, N'Caroline Wolf', N'Swaziland', NULL, N'wmoij8@rgadjjc.-b-ksw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (801, N'Charlotte Underwood', N'Peru', NULL, N'deih@rvtgtm.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (802, N'Sheldon Gordon', N'Lebanon', NULL, N'selcqeny.mqslurdpe@d-unck.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (803, N'Randall Conley', N'Angola', NULL, N'ujnjz.ldezqjr@cfgbcee.fondqo.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (804, N'Edgar Benson', N'Vietnam', NULL, N'aiwuy7@zkfwcntj.xdlnpe.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (805, N'Bridget Mc Clure', N'Croatia', NULL, N'lfjuorfq@vmnuwd.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (806, N'Jorge Hill', N'Guadeloupe', NULL, N'jmakhepp.fpseh@kltz.asfwok.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (807, N'Becky Bates', N'Guinea', NULL, N'qllds.ynkbqcfpx@eaxls-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (808, N'Diane Melendez', N'Lithuania', NULL, N'lhekpezw@lihywb.icvchc.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (809, N'Jolene Melendez', N'Estonia', NULL, N'oteskzp@vxqeau.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (810, N'Tyler Delacruz', N'Poland', NULL, N'fwuzpriu.ewhryl@btpwvjdtf.rythny.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (811, N'Vanessa Huerta', N'Fiji', NULL, N'ttpabfp.xvdzf@taoibkwvm.bawwhh.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (812, N'Glenda Mullen', N'Uzbekistan', NULL, N'rjkbr96@bulv.onjigh.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (813, N'Angel Proctor', N'Macao', NULL, N'ondna.nfjnsq@dabtpx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (814, N'Angelo Delgado', N'Côte d''Ivoire', NULL, N'qfdhu.ijmrme@yuqkw.xcbxef.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (815, N'Dean Walton', N'Lesotho', NULL, N'ohwesmi.vppbef@dxiczz.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (816, N'Anita Boyer', N'Mayotte', NULL, N'jscbjp.cvfuilul@uvgktxds.iybogj.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (817, N'Colleen Marks', N'Sierra Leone', NULL, N'tfwfgxi.aewsdxcu@gzzexr.ii-fxk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (818, N'Bernard Underwood', N'Falklands', NULL, N'affaoxyl@hfazub.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (819, N'Brent Lozano', N'Tuvalu', NULL, N'kuaynro.dcte@sxuqth.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (820, N'Abraham Gomez', N'Slovenia', NULL, N'izvgdh87@fehmw.zofuer.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (821, N'Jamey Morse', N'Sweden', NULL, N'icalzcxf.skls@g-wywn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (822, N'Kristin Mahoney', N'Estonia', NULL, N'ukiyint0@ljteu-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (823, N'Milton Valenzuela', N'Zambia', NULL, N'tlxhspn@vlrqot.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (824, N'Gregg Grant', N'French Guiana', NULL, N'efpu@wfqdwa.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (825, N'Timmy Navarro', N'Russia', NULL, N'imbgta.xtdmttfm@gbdqlm.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (826, N'Roman Frey', N'Egypt', NULL, N'ryfojt307@eqgxrq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (827, N'Christa Ellis', N'Estonia', NULL, N'dbeisu60@iiobij.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (828, N'Clay Meyers', N'Greece', NULL, N'pkdtdac@wkznx-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (829, N'Leo Leach', N'Greenland', NULL, N'yyurb78@ohgbvtyk.rstmyf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (830, N'Shannon Ruiz', N'India', NULL, N'jurb4@tbpv.fjremq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (831, N'Alfred Landry', N'Greenland', NULL, N'uzpbygeh.nikak@nvqzzwv.lljutt.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (832, N'Pamela Cantu', N'Sri Lanka', NULL, N'faslbu502@vfzotz.tdubus.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (833, N'Oliver Richards', N'Saint Helena', NULL, N'umzan.arrjtqlkz@vqgjfz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (834, N'Hilary Crane', N'Slovakia', NULL, N'vbfqqjhl025@dhxjfe.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (835, N'Amber Fields', N'Malvinas', NULL, N'vnbxw29@wdvbazle.iyhd--.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (836, N'Malcolm Hardy', N'Cameroon', NULL, N'ipoanhkc.lzavbah@ifxju-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (837, N'Joann Bauer', N'Malvinas', NULL, N'wfywvj@hjvlz.n-e-mx.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (838, N'Tony Pruitt', N'Pakistan', NULL, N'cnuv792@xqpopr.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (839, N'Gustavo Maddox', N'Swaziland', NULL, N'izoqx87@xywath.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (840, N'Owen Clements', N'Bermuda', NULL, N'mexhcy.uylpiqfaxo@nzi-e-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (841, N'Dwight Chapman', N'Belarus', NULL, N'apvhag4@rzeryi.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (842, N'George Mc Millan', N'North Korea', NULL, N'htwe79@wcbyia.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (843, N'Freddie Gaines', N'Vanuatu', NULL, N'dpcfspfc@krzcsvel.whiwsn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (844, N'Noel Mc Cormick', N'New Caledonia', NULL, N'tqenvfp.bgydguogkf@fnxtnhhtj.aqskgd.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (845, N'Terrance Schmitt', N'New Caledonia', NULL, N'mkgrux65@hhkinc.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (846, N'Glenda Harmon', N'Guyana', NULL, N'ixics248@mvsstn.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (847, N'Krista Kidd', N'Jordan', NULL, N'gbruzsrt81@foadzt.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (848, N'Latisha Bean', N'Sierra Leone', NULL, N'bvykdmp.akgnhg@zika-x.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (849, N'Leonardo Hendricks', N'Eritrea', NULL, N'moeroo.bavvopfe@wsrlzh.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (850, N'Norman Martin', N'Georgia', NULL, N'zjgeaxoy.kbal@mhks.jdgmf-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (851, N'Kristian Ortiz', N'Czech Republic', NULL, N'apwdm.bwzyhp@tmtkft.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (852, N'Mario Freeman', N'Oman', NULL, N'wvnpf.uwvfqi@nwwwph.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (853, N'Steven Ferrell', N'Estonia', NULL, N'ymwnam.zbxahzz@gfblkhyfo.ojxijj.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (854, N'Myra Gallegos', N'Mexico', NULL, N'cimphg545@xmuibk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (855, N'Virgil Hoffman', N'Zimbabwe', NULL, N'exhlhb656@w-opxu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (856, N'Edgar Petty', N'Jersey', NULL, N'tnsyqrxd.zkbykfea@dwxxsea.esepyi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (857, N'Robert Mora', N'Lesotho', NULL, N'pmqkeys5@pkmx.rawptf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (858, N'Colby Whitney', N'Qatar', NULL, N'kxgcj4@rjvefe.geubwv.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (859, N'Tasha Norris', N'Denmark', NULL, N'bgiouug@kcgaqk.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (860, N'Dorothy Carlson', N'Vatican City', NULL, N'untnv.marn@zuhejx.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (861, N'Lawanda Esparza', N'Bahrain', NULL, N'kfck5@cqhamu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (862, N'Benjamin Braun', N'Anguilla', NULL, N'mxwif294@wgni.jgqbry.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (863, N'Tanisha Guzman', N'China', NULL, N'woxfbn.lxaknetwef@agwdzccm.puynvi.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (864, N'Brady Atkins', N'Switzerland', NULL, N'axyjzki@nuxlqbmp.teyjmi.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (865, N'Ashley Wallace', N'Hong Kong', NULL, N'bvrvvnei@nqbr.zwsihl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (866, N'Edgar Henson', N'Japan', NULL, N'gpuyn.pflctj@tcfdkt.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (867, N'Jonathan Valencia', N'Costa Rica', NULL, N'dhmnmdut15@jv-kgh.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (868, N'Lena Maynard', N'Philippines', NULL, N'xogp.chxzdlqrb@lkrskgdhj.jdzmux.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (869, N'Lakesha Barr', N'Nicaragua', NULL, N'xgxeprb447@rhvxng.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (870, N'Rick Cooper', N'Grenada', NULL, N'dhpmrdx55@cfhvaqzdr.q-plrr.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (871, N'Ivan Scott', N'Andorra', NULL, N'wwpcppc.nqdy@qpcocnq.emmyla.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (872, N'Kristina Li', N'Bhutan', NULL, N'vkeqloz.sbslmn@pzvpcv.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (873, N'Daphne Livingston', N'Isle of Man', NULL, N'hjqcqqx87@yaqlwi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (874, N'Tonia Hardy', NULL, NULL, N'ctyq.cwqr@kdeima.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (875, N'Jeannette Carney', N'Somalia', NULL, N'meqvdvqx244@qrmdtukr.ckduwg.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (876, N'Lakesha Wade', N'Portugal', NULL, N'hhlx462@mldxdy.s-xhib.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (877, N'Melissa Dickerson', N'Congo', NULL, N'rrrway11@mmzkno.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (878, N'Shana Alvarado', N'Georgia', NULL, N'sznawhoz.yjkq@ajfsi.zugpbe.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (879, N'Helen Zimmerman', N'Guam', NULL, N'tujjts9@enfdmx.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (880, N'Bridgette Fuentes', N'Nicaragua', NULL, N'ekejavsa.gfjyk@aaxtrjjl.cltqtr.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (881, N'Gregory Bartlett', N'Haiti', NULL, NULL);
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (882, N'Neal Torres', N'Seychelles', NULL, N'vcokinas@zfc-zm.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (883, N'Meredith Tate', N'Kuwait', NULL, N'hnav.rghczo@chpurm.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (884, N'Meghan Logan', N'Azerbaijan', NULL, N'gnqxjxjs.vhvhctmqw@hxeotb.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (885, N'Kelli Bowman', N'Angola', NULL, N'eujbgh.ahuxolssr@fwibq.pypkip.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (886, N'Vincent Perkins', N'Colombia', NULL, N'hmmlgp5@bwwwemw.gpnwts.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (887, N'Colin Barron', N'Nicaragua', NULL, N'ixtrr.gyggluuq@spht.kylgmx.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (888, N'Kim Atkinson', N'Mexico', NULL, N'stiys.urcmp@ekolzf.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (889, N'Drew Villarreal', N'Comoros', NULL, N'dqxhmvek53@cwbzmb.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (890, N'Annette Boyle', N'Slovakia', NULL, N'uddltb.xmprpsbkez@pzbokr.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (891, N'Chasity Benjamin', N'Bermuda', NULL, N'jatyz.tebcd@o-tvyk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (892, N'Sean Singleton', N'Niue', NULL, N'unmux.oabtarxtrs@gfcxmo.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (893, N'Tamara Case', N'Slovenia', NULL, N'bvptxw.fmetarpaa@urhcd.nnkrpz.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (894, N'Cassandra French', N'Kenya', NULL, N'jatki.zrnfnfvpqc@wjttsm.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (895, N'Marianne Curtis', N'Timor-Leste', NULL, N'igopmya.wpsoov@xpssyu.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (896, N'Mandy Petersen', N'Anguilla', NULL, N'wjipg@uscyso.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (897, N'Charlie Li', N'Australia', NULL, N'xtndoipu@qjkzvp.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (898, N'Tonia Hutchinson', N'Liechtenstein', NULL, N'blwre0@d-nn-a.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (899, N'Lori Schultz', N'Belarus', NULL, N'ibsuf583@ccamdmwwz.omyeqw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (900, N'Erin Bush', N'Eritrea', NULL, N'kjyfhnzg6@iursbz.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (901, N'Travis Finley', N'Côte d''Ivoire', NULL, N'nffqumf.neataxgwvm@gdfhif.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (902, N'Joshua Wilkinson', N'Colombia', NULL, N'lpwmswe.mbukef@kixlwg.nmfazi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (903, N'Edith Small', N'Qatar', NULL, N'nopyhoa5@ltmcyuqz.uvohjy.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (904, N'Cassie Norris', N'Cambodia', NULL, N'dtgbu@dciddy.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (905, N'Steven Michael', N'Tuvalu', NULL, N'buad743@-pxpun.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (906, N'Tamiko Thornton', N'Finland', NULL, N'agqmr.qnpsqx@idelap.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (907, N'Dewayne Frost', N'Bermuda', NULL, N'lncorg.qofprki@knewqc.afolpb.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (908, N'Cedric Rivers', N'Estonia', NULL, N'mrfypyak007@yvwwq.itukfn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (909, N'Christy Harmon', N'Jordan', NULL, N'byoab137@cduo-c.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (910, N'Leslie Newman', N'Suriname', NULL, N'qpsfyb@ilpsyc.aqhrsl.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (911, N'Sean Cross', N'Slovenia', NULL, N'gyfyfkdw.lgiczzcuwl@kfsby.iwxcp-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (912, N'Marcie Booker', N'Bulgaria', NULL, N'xzfcfosr@rioy.rzlnzf.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (913, N'Marie Marsh', N'Burkina Faso', NULL, N'qnadiq80@tfrbst.xzu-gy.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (914, N'Freddie Knapp', NULL, NULL, N'bgoy.qpasoegwpv@jwlhjvg.fmvmsd.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (915, N'Rafael Grant', N'Bangladesh', NULL, N'gehck.qqjeopajzt@qltwss.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (916, N'Kristin Singh', N'Sudan', NULL, N'dtna56@ebwuvq.rrvecw.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (917, N'Claude Rush', N'Chile', NULL, N'pefm3@yxdju.akyjou.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (918, N'Louis Rivera', N'Morocco', NULL, N'rdvb60@cuehcc.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (919, N'Barry Cunningham', N'Vatican City', NULL, N'zevxn.muue@cviojmmj.-xaiez.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (920, N'Theodore Underwood', N'Cambodia', NULL, N'hvkuv.tpddprwwjp@wtuq.khdxwe.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (921, N'Kerri Wolfe', N'Pakistan', NULL, N'lbnj22@uijtz.bqsd-c.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (922, N'Angelica Hines', N'Qatar', NULL, N'ewjmkd.rfdpjmhg@pxzhdq.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (923, N'Leon Randall', N'Switzerland', NULL, N'vfli.baffztwd@qcqiup.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (924, N'Simon Navarro', N'Algeria', NULL, N'jjocmv.dkiry@voigcgav.ypr---.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (925, N'Emma Mack', N'Togo', NULL, N'vyzotzn26@glhvu.ligfhn.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (926, N'Darin Mc Dowell', N'Mali', NULL, N'wdsscfcw70@wpzjjp.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (927, N'Nina Robertson', N'North Korea', NULL, N'kfffswor.rvqgtonfsk@atfq.qgxclk.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (928, N'Tracey Velasquez', N'Croatia', NULL, N'nmxnf77@eqwlw.xhtmdl.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (929, N'Joann Guerrero', N'Nicaragua', NULL, N'kxkswfky067@bcfikl.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (930, N'Matthew Hampton', N'Madagascar', NULL, N'vbzod.iawkujxax@feqjgmk.qjycop.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (931, N'Owen Chen', N'Serbia', NULL, N'prxqhagx@sfcjd.fqdlum.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (932, N'Gilbert Monroe', N'Niue', NULL, N'hwkw@ijzpbfxs.ldrmlg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (933, N'Gina Carr', N'Pakistan', NULL, N'njyzdwkl3@mlnmws.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (934, N'Jimmie Vaughn', N'Cyprus', NULL, N'absldi4@vwtlff.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (935, N'Jenna Whitaker', N'Belarus', NULL, N'odrmnf@-onell.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (936, N'Adriana Morse', N'Kazakhstan', NULL, N'oaocyzw.hszhgr@kiofg.ipijg-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (937, N'Steven Beck', N'Costa Rica', NULL, N'heasex767@fswtwg.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (938, N'Amelia Miranda', N'Austria', NULL, N'dtahbfnp.vbwlvh@iidpyl.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (939, N'Jamey Pineda', N'Gibraltar', NULL, N'cwmqksgj94@yqdax.-vwofj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (940, N'Melvin Schaefer', N'Burundi', NULL, N'xnvooycq@vnhlidjql.mxogag.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (941, N'Janice Hobbs', N'Réunion', NULL, N'kauf5@eqho.vvpmnk.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (942, N'Hannah Cantrell', N'Bahamas', NULL, N'aipjayzh.qeoeh@qwxgdz.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (943, N'Megan Sheppard', N'Hungary', NULL, N'hbtr.orhzm@pqkohv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (944, N'Gilbert Lopez', N'Brazil', NULL, NULL);
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (945, N'Kristian Higgins', N'Greece', NULL, N'qrnamxp@ljswfp.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (946, N'Margarita Blair', N'Zimbabwe', NULL, N'cngevzya78@prkfqcv.hlcdcs.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (947, N'Shelley Tran', N'Vietnam', NULL, N'fyzup.msaoxjwc@-uamzz.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (948, N'Jeffrey Weiss', N'Madagascar', NULL, N'cfuarvf27@wthxnp.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (949, N'Julius Simpson', N'Puerto Rico', NULL, N'plje982@tomq.l-eiux.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (950, N'Ginger Garner', N'Morocco', NULL, N'dtdatpm2@kwrsh.daucvj.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (951, N'Lance Torres', N'Portugal', NULL, N'lmkee.bagz@rspagz.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (952, N'Roxanne Miles', N'Israel', NULL, N'pjmcotnn.txae@nbuwiv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (953, N'Marcie Irwin', N'Belarus', NULL, N'jcmif4@vdycpz.nahe-b.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (954, N'Louis Mendoza', N'Guatemala', NULL, N'rnefz.ysslg@xjirniwa.mvnuuc.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (955, N'Carla Castillo', N'India', NULL, N'zzpopjf0@jesegdxw.pdxqbr.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (956, N'Latanya Case', N'Madagascar', NULL, N'bzvfjl7@dlvhrubic.nqeqzj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (957, N'Crystal Maxwell', N'Grenada', NULL, N'xnrvu.jaaslolvxt@xfv-jg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (958, N'Angelique Braun', N'Cape Verde', NULL, N'ipokbn.vjhq@hubprvcv.xaqxla.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (959, N'Byron Evans', N'South Korea', NULL, N'osdttlq.qpzo@oryaztpg.mhqhkp.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (960, N'Jeffery Ball', N'Montserrat', NULL, N'jbty53@tenw.mtaen-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (961, N'Erick Porter', N'Eire', NULL, N'zlsglv317@rilekr.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (962, N'Constance Shepherd', N'Bangladesh', NULL, N'vcxq.ojkyuwnum@bndslztf.ukozbi.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (963, N'Janice Acevedo', N'Kazakhstan', NULL, N'djupx.xxgzu@wbzidk.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (964, N'Naomi Franco', N'Réunion', NULL, N'celhjdt@uqdo.dwjuns.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (965, N'Alan Odom', N'Nigeria', NULL, N'hxomzu6@qdphpc.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (966, N'Diana Montoya', N'Comoros', NULL, N'owegtn202@kz-log.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (967, N'Lawanda Best', N'Botswana', NULL, N'hkexwymp.rcgeo@vzqqwm.xvedov.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (968, N'Andre Bell', N'Turkey', NULL, N'akhm85@sgptcf.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (969, N'Colby Shepherd', N'Armenia', NULL, N'vshv98@sg-ssv.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (970, N'Jeannie Randall', N'Nauru', NULL, N'xbch.sbdftesz@-hoezw.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (971, N'Vicki Valentine', N'Nicaragua', NULL, N'jvwpoaou.ijvntwcjg@vhtnhr.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (972, N'Wesley Kennedy', N'Bermuda', NULL, N'wwamxxd.mdrymlqjwn@bpqxbn.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (973, N'Nick Camacho', N'Finland', NULL, N'bgienvkh.pqiz@aciwbd.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (974, N'Ethan Stokes', N'South Africa', NULL, N'uotgkpuj.bgvmlraj@xyjd.nwzeq-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (975, N'Latanya Werner', N'Iran', NULL, N'djzbd.efaxxqgo@wsrogw.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (976, N'Betsy Parks', N'Myanmar', NULL, N'nvsve.emrclpwl@rxlgd.hgnuhe.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (977, N'Franklin Mc Millan', N'Guadeloupe', NULL, N'nukq3@nsdplgbzh.uoytjj.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (978, N'Audra Soto', N'Qatar', NULL, N'oqeczh.rfgkqk@xn-rw-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (979, N'Hope Bolton', N'Pakistan', NULL, N'askh.agmdulxlsv@owswwj.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (980, N'Christi Goodwin', N'Togo', NULL, N'vvjwonej85@ezxmqe.mvdy-l.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (981, N'Pamela Cohen', N'Mauritius', NULL, N'dvzimfex.ghnjlyg@stzjtu.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (982, N'Lamar Meadows', N'Burundi', NULL, N'afyocoh.xfolzbh@wkcjes.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (983, N'Gilberto Norris', N'Latvia', NULL, N'whekgn@sadsg.za-flt.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (984, N'Eric Daniels', N'Argentina', NULL, N'mixse.fior@aqrfou.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (985, N'Scott Fowler', N'Sierra Leone', NULL, N'xgeetl9@plyxppros.roafpx.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (986, N'Micah Sanford', N'Guinea', NULL, N'zwyidpc.levoino@ctbqyfrc.qcybmt.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (987, N'Oscar Yates', N'Mexico', NULL, N'efhijvwb89@mwhvrhjys.aikpoi.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (988, N'Guadalupe Mack', N'Greenland', NULL, N'fiijcatx7@cxopbu.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (989, N'Mandi Krause', N'Somalia', NULL, N'aqfmqgak87@-tdtga.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (990, N'Shawn Pope', N'Mauritius', NULL, N'vgxwxlwa9@rdxlttnz.va-kwv.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (991, N'Jana Delgado', N'Bhutan', NULL, N'nqhxvyo.oogaivtn@ginhgd.jwwlo-.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (992, N'Ernest Patton', N'Antarctica', NULL, N'ahshweir970@fyoee-.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (993, N'Bobbi Melendez', N'Denmark', NULL, N'bucorxw.svinafm@qccg.rwppn-.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (994, N'Gavin Bender', N'Pitcairn', NULL, N'eayrnup.ngmaf@gscth.xgvjjr.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (995, N'Ben Kim', N'Thailand', NULL, N'izskrho6@wovujl.com');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (996, N'Bobby Palmer', N'Nigeria', NULL, N'jvxb@vdkxp.egtqnx.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (997, N'Eduardo Fowler', N'Mozambique', NULL, N'akxa.kbzyadyn@jxexo.gxqjjo.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (998, N'Lakisha Blackwell', N'Nicaragua', NULL, N'xttnv028@dmxmo.ebgqtg.org');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (999, N'Ruby Callahan', N'Kuwait', NULL, N'dzjdxv023@ooipj.tlv-dv.net');
INSERT INTO Creators (CreatorID, Name, CountryOfResidence, TaxReferenceNumber, EmailAddress) VALUES (1000, N'Constance Dunn', N'Cambodia', NULL, N'ymgznek618@xmqcd.qnyajq.com');

INSERT INTO Issues (IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description) VALUES (2, N'1st Issue Special', CAST(N'1975-04-01' AS Date), N'DC', 1, N'"Only so far afflicted, that we live
Desiring without hope."  So grief assail''d
My heart at hearing this, for well I knew
Suspended in that Limbo many a soul
Of mighty worth.  "O tell me, sire rever''d!
Tell me, my master!"  I began through wish
Of full assurance in that holy faith,
Which vanquishes all error; "say, did e''er
Any, or through his own or other''s merit,
Come forth from thence, whom afterward was blest?"');
INSERT INTO Issues (IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description) VALUES (3, N'1st Issue Special', CAST(N'1975-04-08' AS Date), N'DC', 2, N'Revisited with joy.  Love brought me thence,
Who prompts my speech.  When in my Master''s sight
I stand, thy praise to him I oft will tell."');
INSERT INTO Issues (IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description) VALUES (4, N'1st Issue Special', CAST(N'1975-04-15' AS Date), N'DC', 3, N'Of all to speak at full were vain attempt;
For my wide theme so urges, that ofttimes
My words fall short of what bechanc''d.  In two
The six associates part.  Another way
My sage guide leads me, from that air serene,
Into a climate ever vex''d with storms:
And to a part I come where no light shines. ');
INSERT INTO Issues (IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description) VALUES (5, N'1st Issue Special', CAST(N'1975-04-22' AS Date), N'DC', 4, N'We, o''er the shades thrown prostrate by the brunt
Of the heavy tempest passing, set our feet
Upon their emptiness, that substance seem''d.');
INSERT INTO Issues (IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description) VALUES (6, N'1st Issue Special', CAST(N'1975-04-29' AS Date), N'DC', 5, N'Gives sentence, and dismisses them beneath,
According as he foldeth him around:
For when before him comes th'' ill fated soul,
It all confesses; and that judge severe
Of sins, considering what place in hell
Suits the transgression, with his tail so oft
Himself encircles, as degrees beneath
He dooms it to descend.  Before him stand
Always a num''rous throng; and in his turn
Each one to judgment passing, speaks, and hears
His fate, thence downward to his dwelling hurl''d.');
INSERT INTO Issues (IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description) VALUES (7, N'1st Issue Special', CAST(N'1975-05-06' AS Date), N'DC', 6, N'He answer''d: "The renown of their great names
That echoes through your world above, acquires
Favour in heaven, which holds them thus advanc''d."
Meantime a voice I heard: "Honour the bard
Sublime! his shade returns that left us late!"
No sooner ceas''d the sound, than I beheld
Four mighty spirits toward us bend their steps,
Of semblance neither sorrowful nor glad.');
INSERT INTO Issues (IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description) VALUES (8, N'1st Issue Special', CAST(N'1975-05-13' AS Date), N'DC', 7, N'Then I his alter''d hue perceiving, thus:
"How may I speed, if thou yieldest to dread,
Who still art wont to comfort me in doubt?"');
INSERT INTO Issues (IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description) VALUES (9, N'1st Issue Special', CAST(N'1975-05-20' AS Date), N'DC', 8, N'Then when a little more I rais''d my brow,
I spied the master of the sapient throng,
Seated amid the philosophic train.
Him all admire, all pay him rev''rence due.
There Socrates and Plato both I mark''d,
Nearest to him in rank; Democritus,
Who sets the world at chance, Diogenes,
With Heraclitus, and Empedocles,
And Anaxagoras, and Thales sage,
Zeno, and Dioscorides well read
In nature''s secret lore.  Orpheus I mark''d
And Linus, Tully and moral Seneca,
Euclid and Ptolemy, Hippocrates,
Galenus, Avicen, and him who made
That commentary vast, Averroes.');
INSERT INTO Issues (IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description) VALUES (10, N'1st Issue Special', CAST(N'1975-05-27' AS Date), N'DC', 9, N'I then, with error yet encompass''d, cried:
"O master!  What is this I hear?  What race
Are these, who seem so overcome with woe?"');


INSERT INTO Stock (StockReferenceID, IssueID, Condition, AvailableQty, Price, Comments, CoverImagePath) VALUES (1, 2, N'Very Fine', 6, CAST(188.03 AS Numeric(8, 2)), NULL, N'D:\StockImages\PlaceHolder.png');
INSERT INTO Stock (StockReferenceID, IssueID, Condition, AvailableQty, Price, Comments, CoverImagePath) VALUES (2, 3, N'Very Fine', 0, CAST(99.14 AS Numeric(8, 2)), NULL, N'D:\StockImages\PlaceHolder.png');
INSERT INTO Stock (StockReferenceID, IssueID, Condition, AvailableQty, Price, Comments, CoverImagePath) VALUES (3, 4, N'Very Fine', 6, CAST(90.63 AS Numeric(8, 2)), NULL, N'D:\StockImages\PlaceHolder.png');
INSERT INTO Stock (StockReferenceID, IssueID, Condition, AvailableQty, Price, Comments, CoverImagePath) VALUES (4, 5, N'Very Fine', 2, CAST(171.36 AS Numeric(8, 2)), NULL, N'D:\StockImages\PlaceHolder.png');
INSERT INTO Stock (StockReferenceID, IssueID, Condition, AvailableQty, Price, Comments, CoverImagePath) VALUES (5, 6, N'Very Fine', 3, CAST(49.29 AS Numeric(8, 2)), N'igh estate.  Forthwith
I understood for certain this the tribe
Of those ill spirits both to God displeasing
And to his foes.  These wretches, who ne''er lived,
Went on in nak', N'D:\StockImages\PlaceHolder.png');
INSERT INTO Stock (StockReferenceID, IssueID, Condition, AvailableQty, Price, Comments, CoverImagePath) VALUES (6, 7, N'Very Fine', 7, CAST(77.46 AS Numeric(8, 2)), NULL, N'D:\StockImages\PlaceHolder.png');
INSERT INTO Stock (StockReferenceID, IssueID, Condition, AvailableQty, Price, Comments, CoverImagePath) VALUES (7, 8, N'Very Fine', 8, CAST(41.98 AS Numeric(8, 2)), NULL, N'D:\StockImages\PlaceHolder.png');
INSERT INTO Stock (StockReferenceID, IssueID, Condition, AvailableQty, Price, Comments, CoverImagePath) VALUES (8, 9, N'Very Fine', 0, CAST(19.54 AS Numeric(8, 2)), NULL, N'D:\StockImages\PlaceHolder.png');
INSERT INTO Stock (StockReferenceID, IssueID, Condition, AvailableQty, Price, Comments, CoverImagePath) VALUES (9, 10, N'Very Fine', 7, CAST(71.55 AS Numeric(8, 2)), N'ith that ill band
Of angels mix''d, who nor rebellious prov''d
Nor yet were true to God, but for themselves
Were only.  From his bounds Heaven drove them forth,
Not to impair his lustre, nor the depth
Of Hell receives them, lest th'' accursed tribe
Should glory thence with exultation vain."

I then: "Master! what doth aggrieve them thus,
That they lament so loud?"  He straight replied:
"That will I tell thee briefly.  These of death
No hope may entert', N'D:\StockImages\PlaceHolder.png');


ALTER TABLE ComicCreators ADD FOREIGN KEY(CreatorID)
REFERENCES Creators (CreatorID);

ALTER TABLE ComicCreators ADD FOREIGN KEY(IssueID)
REFERENCES Issues (IssueID);

ALTER TABLE Stock ADD FOREIGN KEY(IssueID)
REFERENCES Issues (IssueID);
