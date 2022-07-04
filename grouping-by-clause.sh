
# menampilkan total products kolom category berdasarkan jumlah categorynya
select count(id) as 'Total Product', category from products group by category;
select min(price) as 'Product Murah', category from products group by category;
select avg(price) as 'Rata-rata Harga', category from products group by category;
select sum(quantity) as 'Total Stock', category from products group by category;