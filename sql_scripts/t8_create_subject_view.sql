drop view SubjectsView;
CREATE OR REPLACE VIEW SubjectsView AS
SELECT OutID,Year,UkrTest as Test,NULL AS Lang,UkrTestStatus as TestStatus,
       NULL AS DPALevel,UkrBall100 as Ball100,UkrBall12 as Ball12,
       UkrBall as Ball,UkrAdaptScale as AdaptScale,UkrPTName as PTName,
       UkrPTTerName as PTTerName,UkrPTAreaName as PTAreaName,UkrPTRegName as PTRegName
FROM zno_data WHERE UkrTest IS NOT NULL
UNION
SELECT OutID,Year,HistTest,HistLang,HistTestStatus,NULL AS DPALevel,
       HistBall100,HistBall12,HistBall,NULL AS AdaptScale,HistPTName,
       HistPTTerName,HistPTAreaName,HistPTRegName
FROM zno_data WHERE HistTest IS NOT NULL
UNION
SELECT OutID,Year,MathTest,MathLang,MathTestStatus,NULL AS DPALevel,
       MathBall100,MathBall12,MathBall,NULL AS AdaptScale,MathPTName,
       MathPTTerName,MathPTAreaName,MathPTRegName
FROM zno_data WHERE MathTest IS NOT NULL
UNION
SELECT OutID,Year,PhysTest,PhysLang,PhysTestStatus,NULL AS DPALevel,
       PhysBall100,PhysBall12,PhysBall,NULL AS AdaptScale,PhysPTName,
       PhysPTTerName,PhysPTAreaName,PhysPTRegName
FROM zno_data WHERE PhysTest IS NOT NULL
UNION
SELECT OutID,Year,ChemTest,ChemLang,ChemTestStatus,NULL AS DPALevel,
       ChemBall100,ChemBall12,ChemBall,NULL AS AdaptScale,ChemPTName,
       ChemPTTerName,ChemPTAreaName,ChemPTRegName
FROM zno_data WHERE ChemTest IS NOT NULL
UNION
SELECT OutID,Year,BioTest,BioLang,BioTestStatus,NULL AS DPALevel,
       BioBall100,BioBall12,BioBall,NULL AS AdaptScale,BioPTName,
       BioPTTerName,BioPTAreaName,BioPTRegName
FROM zno_data WHERE BioTest IS NOT NULL
UNION
SELECT OutID,Year,GeoTest,GeoLang,GeoTestStatus,NULL AS DPALevel,
       GeoBall100,GeoBall12,GeoBall,NULL AS AdaptScale,GeoPTName,
       GeoPTTerName,GeoPTAreaName,GeoPTRegName
FROM zno_data WHERE GeoTest IS NOT NULL
UNION
SELECT OutID,Year,EngTest,NULL AS Lang,EngTestStatus,EngDPALevel,
       EngBall100,EngBall12,EngBall,NULL AS AdaptScale,EngPTName,
       EngPTTerName,EngPTAreaName,EngPTRegName
FROM zno_data WHERE EngTest IS NOT NULL
UNION
SELECT OutID,Year,FraTest,NULL AS Lang,FraTestStatus,FraDPALevel,
       FraBall100,FraBall12,FraBall,NULL AS AdaptScale,FraPTName,
       FraPTTerName,FraPTAreaName,FraPTRegName
FROM zno_data WHERE FraTest IS NOT NULL
UNION
SELECT OutID,Year,DeuTest,NULL AS Lang,DeuTestStatus,DeuDPALevel,
       DeuBall100,DeuBall12,DeuBall,NULL AS AdaptScale,DeuPTName,
       DeuPTTerName,DeuPTAreaName,DeuPTRegName
FROM zno_data WHERE DeuTest IS NOT NULL
UNION
SELECT OutID,Year,SpaTest,NULL AS Lang,SpaTestStatus,SpaDPALevel,
       SpaBall100,SpaBall12,SpaBall,NULL AS AdaptScale,SpaPTName,
       SpaPTTerName,SpaPTAreaName,SpaPTRegName
FROM zno_data WHERE SpaTest IS NOT NULL;
