INSERT INTO LocationTable(RegName, AreaName, TerName, TerTypeName)
SELECT DISTINCT LocV.regname, LocV.areaname, LocV.tername, zno.tertypename FROM LocationView AS LocV
LEFT JOIN zno_data AS zno
    ON LocV.regname = zno.regname AND LocV.areaname = zno.areaname AND LocV.tername = zno.tername
WHERE LocV.regname IS NOT NULL AND LocV.areaname IS NOT NULL AND LocV.tername IS NOT NULL;
