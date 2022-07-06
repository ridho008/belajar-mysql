
# membuat tabel orders
create table orders(
   id int not null auto_increment,
   total int not null,
   order_date datetime not null default current_timestamp,
   primary key (id)
) engine = InnoDB;

# membuat tabel order details
create table order_details(
   id_product varchar(10) not null,
   id_order int not null,
   price int not null,
   quantity int not null,
   primary key (id_product, id_order)
) engine = InnoDB;

# menambahkan foreign key id_product
alter table order_details
add constraint fk_order_details_product
foreign key (id_product) references products (id);

# menambahkan foreign key id_order
alter table order_details
add constraint fk_order_details_order
foreign key (id_order) references orders (id);

# menambahkan data ke tabel orders
insert into orders (total) values (50000), (40000), (90000);

# menambahkan data di table order_details
# kenapa id_product dan id_order di beri primary key ?
# kerena, ketika order barang akan menambahkan record baru ke order_details, ubah saja quantitynya.
insert into order_details (id_product, id_order, price, quantity)
values ('P0001', 1, 50000, 1),
      ('P0002', 2, 40000, 1),
      ('P0003', 3, 90000, 1);

select * from orders
join order_details on (order_details.id_order = orders.id)
join products on (products.id = order_details.id_product);

select orders.id, products.name, products.id, order_details.quantity, order_details.price from orders
join order_details on (order_details.id_order = orders.id)
join products on (products.id = order_details.id_product);