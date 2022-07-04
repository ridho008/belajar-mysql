

# membuat table products
create table products(
   id varchar(10) not null,
   name varchar(100) not null,
   description text,
   price int unsigned not null,
   quantity int unsigned not null default 0,
   created_at timestamp not null default current_timestamp
) engine = InnoDB;

# menambahkan data kedalam table products
insert into products(id, name, price, quantity)
values("P0001", "Rendang", 10000, 10);

insert into products(id, name, description, price, quantity)
values("P0002", "Mie Ayam", "Mie Ayam Bakso" , 8000, 10);

# menambahkan data banyak sekaligus
insert into products(id, name, description, price, quantity)
values("P0005", "Martabak Bangka", "Enak Kali" , 15000, 20),
      ("P0006", "Pangsit", "Mantap" , 10000, 18),
      ("P0007", "Mie Rebus", "Mantap" , 12000, 15);