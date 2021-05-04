INSERT INTO EdInstitution (LocID, EOName, EOParent, EOTypeName)
SELECT DISTINCT Loc.locid, zno.eoname, zno.eoparent, zno.eotypename FROM zno_data AS zno
JOIN locationtable AS Loc
    ON zno.eoregname = Loc.regname AND zno.eoareaname = Loc.areaname AND zno.eotername = Loc.tername;
