

# membuat table customers dengan email unique
create table customers(
   id int not null auto_increment,
   email varchar(100) not null,
   first_name varchar(100) not null,
   last_name varchar(100),
   primary key (id),
   unique key email_unique (email)
) engine = InnoDB;

# menghapus constraint di kolom email
alter table customers
drop constraint email_unique;

# menghapus constraint email
alter table customers
add constraint email_unique unique (email);

insert into customers (email, first_name, last_name)
values("ridhosurya@gmail.com", "toni", "asd");