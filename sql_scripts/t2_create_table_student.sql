drop table student cascade;
create table Student(
    OutID varchar(50) not null primary key,
    LocID int,
    Birth varchar(20),
    SexTypeName varchar(100),
    RegTypeName varchar(100),
    constraint FKLocID
        foreign key (LocID)
            references LocationTable(LocID)
);