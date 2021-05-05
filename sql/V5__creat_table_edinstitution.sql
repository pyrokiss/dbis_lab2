drop table edinstitution cascade;
create table EdInstitution(
    EdID serial not null primary key,
    LocID int,
    EOName varchar(300),
    EOTypeName varchar(300),
    EOParent varchar(300),
    constraint FKLocID
        foreign key (LocID)
            references locationtable(LocID)
);