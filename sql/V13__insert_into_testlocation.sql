INSERT INTO TestLocation(LocID, PTName)
SELECT DISTINCT Loc.LocID, SubV.ptname FROM SubjectsView AS SubV
JOIN LocationTable AS Loc
    ON SubV.ptregname = Loc.regname AND SubV.ptareaname = Loc.areaname AND SubV.pttername = Loc.tername;
