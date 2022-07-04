

# menambahkan alias di kolom table
select id as kode,
       name as nama,
       category as kategori,
       price as harga,
       quantity as jumlah
from products;

# menambahkan alias di tabel
# p = merupakan tabel di kolom yang diambil
select p.id as kode,
       p.name as nama,
       p.category as kategori,
       p.price as harga,
       p.quantity as jumlah
from products as p;