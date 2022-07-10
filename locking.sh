

# Locking record auto
# jika, proses user 1 belum commit, otomatis proses user 2 akan di menunggu hingga proses user 1 di commit
# proses user 1
start transaction;

update guestbooks set title = 'melakukan update user 1' where id = 7;

commit;

# proses user 2
start transaction;

update guestbooks set title = 'melakukan update user 1' where id = 7;

commit;

# Locking record manual
# proses user 1
# jika user 1 melihat quantity hasil 100, lalu ingin mengupdate < 10 = 90, sebelum di commit si user 2 akan menunggu proses update user 1.
start transaction;

select * from products where id = 'P0001' for update;

update products set quantity = quantity - 10 where id = 'P0001';

commit;

# proses user 2
# sambil menunggu, user 1 mendapatkan quantity 90, setelah di commit user 1. akan proses user 2. update juga quantitynya, sehingga hasilnya adalah 80 quantity.
start transaction;

select * from products where id = 'P0001' for update;

update products set quantity = quantity - 10 where id = 'P0001';

commit;

# -------- Locking Tables ------------
# artinya table products akan di kunci dan hanya bisa di lihat, tidak bisa di edit
# lock table read
lock tables products read;

update products set quantity = 100 where id = 'P0001';

# menerapkan lock tables
unlock tables;

# lock table write
# tidak bisa di read dan di write, jikalau mengaksesnya dari user lain.
lock tables products write;

update products set quantity = 100 where id = 'P0001';

select * from products;

unlock tables;

# ---------- Locking Instance ---------
# akan mengunci database dan isinya (tables)
# hanya bisa melakukan DDL(Data Definition Language) yaitu mengubah struktur data, seperti alter tables
lock instance for backup;

unlock instance;

# user 2
# sebelum diberikan printah unlock instance, user 2 ini akan menunggu terus (loading)
alter table products
add column sample varchar(100);