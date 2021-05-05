drop table testlocation cascade;
create table TestLocation(
    TLID serial not null primary key,
    LocID int not null ,
    PTName varchar(300) not null,
    constraint FKLocID
        foreign key (LocID)
            references LocationTable(LocID)
);
