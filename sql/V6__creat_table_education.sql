drop table education;
create table Education(
    OutID varchar(50) not null,
    EdID serial not null,
    ClassProfileName varchar(150),
    ClassLangName varchar(50),
    constraint FKOutID
        foreign key (OutID)
            references student(OutID),
    constraint FKEdID
        foreign key (EdID)
            references edinstitution(EdID),
    primary key(OutID, EdID)
);