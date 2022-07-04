
# menampilkan data sebanyak 5
select * from products order by id asc limit 5;

# skip (offset) hasil query
# skip urutan id 2, lalu munculkan id 3 dan 4
select * from products order by id asc limit 2, 2;