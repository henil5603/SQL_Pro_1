create database a2;
use a2;
create table book(
id int not null primary key,
name varchar(40),
price int not null);

insert into book
(id,name,price)
values
(101,"krishna",2500),
(102,"Ram",2550);

select * from book;

select price from book;

select * from book where price>=2500 ;

create table aut(
id int not null primary key,
name varchar(40),
price int not null,
book_id int,
foreign key(book_id) references book(id));

insert into aut
(id,name,price,book_id)
values
(10,"ka",8115,101),
(11,"no",84848,102);

select * from aut;
select book_id from aut;

drop table aut;
