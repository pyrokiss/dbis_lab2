drop view LocationView;
CREATE OR REPLACE VIEW LocationView AS
SELECT TerName, AreaName, RegName
FROM zno_data
UNION
SELECT EOTerName, EOAreaName, EORegName
FROM zno_data
UNION
SELECT PTTerName, PTAreaName, PTRegName
FROM SubjectsView;