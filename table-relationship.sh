


# foreign key
create table wishlist(
   id int not null auto_increment,
   id_product varchar(10) not null,
   description text,
   primary key (id),
   constraint fk_wishlist_product
   foreign key (id_product) references products(id)
) engine = InnoDB;

# menghapus foreign key
alter table wishlist
drop constraint fk_wishlist_product;

# menambahkan foreign key kepada kolom
alter table wishlist
add constraint fk_wishlist_product
foreign key (id_product) references products(id);

insert into wishlist (id_product, description) values ('P0001', 'Makanan Kesukaan');

# akan muncul error, karena id products = salah tidak ada di table products
insert into wishlist (id_product, description) values ('salah', 'Makanan Kesukaan');

# akan error, karena id P0001 digunakan oleh table wishlist yang ada datanya
delete from products
where id = 'Pxxxx';

# menambahkan foreign key behavior
# https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html
alter table wishlist
add constraint fk_wishlist_product
foreign key (id_product) references products(id)
on delete cascade on update cascade;

insert into products (id, name, category, price, quantity)
values ('Pxxxx', 'Contoh', 'Makanan', 1000, 80);

insert into wishlist (id_product, description)
values ('Pxxxx', 'Enak');