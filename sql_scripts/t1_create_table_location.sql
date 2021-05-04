drop table locationtable cascade;
create table LocationTable(
    LocID serial not null primary key,
    RegName varchar(150),
    AreaName varchar(150),
    TerName varchar(150),
    TerTypeName varchar(50)
);