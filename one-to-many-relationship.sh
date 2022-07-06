
# membuat table categories dengan primary key id
create table categories(
   id varchar(10) not null ,
   name varchar(100) not null,
   primary key (id)
) engine = InnoDB;

# menghapus kolom id_kategory
alter table products
drop column id_category;

# menambahkan kolom id_category setelah kolom quantity
alter table products
add column id_category varchar(10) after quantity;

# menambahkan foreign key di id_category
alter table products
add constraint fk_products_categories
foreign key (id_category) references categories (id);

insert into categories (id, name) values 
('C001', 'Makanan'),
('C002', 'Minuman'),
('C003', 'Lain-Lain');

# mengupdate data products id_category menggunakan operator IN
update products
set id_category = 'C001'
where id in('P0001', 'P0002', 'P0003', 'P0004', 'P0005', 'P0006', 'P0007');

update products
set id_category = 'C003'
where id in('P0008');

# join
select products.id, products.name, categories.name from products
join categories on categories.id = products.id_category;