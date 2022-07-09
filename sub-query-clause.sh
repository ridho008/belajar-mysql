

# sub query where
select * from products where price > (select avg(price) from products);

# melihat harga termahal
select max(price) from products;

update products set price = 1000000 where id = 'X0001';

# melihat price paling tinggi, tetapi hanya price yang berelasi dengan tabel categories
select max(cp.price) from (
   select price from categories inner join products on (products.id_category = categories.id)
) as cp;