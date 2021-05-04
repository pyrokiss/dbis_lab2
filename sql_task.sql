SELECT TestT.Year, TestLoc.RegName, MAX(TestT.Ball100) FROM TestTable AS TestT
JOIN
    (TestLocation AS TestL
        JOIN LocationTable AS Loc
        ON TestL.LocID = Loc.LocID) AS TestLoc
ON TestT.TLID = TestLoc.TLID
WHERE TestT.teststatus='Зараховано' AND TestT.test='Історія України'
GROUP BY TestT.Year, TestLoc.RegName;