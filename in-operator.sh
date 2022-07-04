


# menampilkan category yang ada makanan dan minuman
select * from products where category in ('Makanan', 'Minuman');

# menampilkan category yang tidak ada makanan dan minuman
select * from products where category not in ('Makanan', 'Minuman');

# jika menggunakan operator or
select * from products where category = 'Makanan' or category = 'Minuman';