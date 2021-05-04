INSERT INTO TestTable(outid, test, year, tlid, ball, ball100, ball12, lang, teststatus, dpalevel, adaptscale)
SELECT SubV.outid, SubV.test, SubV.year, TestLoc.tlid, SubV.ball, SubV.ball100, SubV.ball12, SubV.lang, SubV.teststatus, SubV.dpaLevel, SubV.adaptscale
FROM SubjectsView AS SubV
LEFT JOIN (TestLocation TL JOIN LocationTable Loc on TL.locid = Loc.locid) TestLoc
ON TestLoc.ptname = SubV.ptname AND TestLoc.regname = SubV.ptregname AND TestLoc.AreaName = SubV.ptareaname AND TestLoc.tername = SubV.pttername;
