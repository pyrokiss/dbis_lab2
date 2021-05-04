INSERT INTO Student(OutID, LocID, Birth, SexTypeName, RegTypeName)
SELECT zno.outid, Loc.locid, zno.birth, zno.sextypename, zno.regtypename FROM zno_data AS zno
JOIN locationtable AS Loc
    ON zno.regname = Loc.regname AND zno.areaname = Loc.areaname AND zno.tername = Loc.tername;
