create database webdb;
use webdb;

create table member
(
    user_id   varchar(50)  not null
        primary key,
    user_name varchar(20)  null,
    password  varchar(255) null,
    reg_dt    datetime     null
);



select *
from member;

insert into member (user_id, user_name, password, reg_dt )
values
    (
        'test01',
        '홍길동',
        '1234',
        NOW()
    );



