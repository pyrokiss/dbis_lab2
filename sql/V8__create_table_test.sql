drop table TestTable cascade;
create table TestTable(
    OutID varchar(50) not null,
    Test varchar(100) not null,
    Year int not null,
    TLID int,
    Ball int,
    Ball100 int,
    Ball12 int,
    Lang varchar(50),
    TestStatus varchar(50),
    DPALevel varchar(50),
    AdaptScale int,
    constraint FKOutID
        foreign key (OutID)
            references Student(OutID),
    constraint FKTest
        foreign key (Test)
            references SubjectName(Test),
    constraint FKTLID
        foreign key (TLID)
            references TestLocation(TLID),
    primary key(OutID, Test, Year)
);