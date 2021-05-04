INSERT INTO Education(OutID, EDID, ClassProfileName, ClassLangName)
SELECT zno.outid, EdIn.edid, zno.classprofilename, zno.classlangname FROM zno_data AS zno
JOIN EdInstitution as EdIn
    ON zno.eoname = EdIn.eoname AND zno.eoparent = EdIn.eoparent AND zno.eotypename = EdIn.eotypename;

