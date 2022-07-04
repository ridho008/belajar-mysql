

# https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions-and-modifiers.html
# menampilkan jumlah data tabel
select id, count(id) as 'Total Product' from products;


select max(price) as 'Product Mahal' from products;
select min(price) as 'Product Murah' from products;
select avg(price) as 'Rata-rata Harga' from products;
select sum(quantity) as 'Total Stock' from products;