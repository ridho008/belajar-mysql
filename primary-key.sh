# membuat table products
create table products(
   id varchar(10) not null,
   name varchar(100) not null,
   description text,
   price int unsigned not null,
   quantity int unsigned not null default 0,
   created_at timestamp not null default current_timestamp,
   primary key (id, name)
) engine = InnoDB;

# menambahkan primary key
alter table products
add primary key (id);