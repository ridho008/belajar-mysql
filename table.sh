

# membuat table
create table barang(
   id int,
   nama varchar(100),
   harga int,
   jumlah int
) engine = InnoDB

# melihat struktur table
desc barang (nama table)

# melihat sturuktur pembuatan table
show create table barang

# mengubah table, jika ingin mengubah field table, menghapus
# menambahkan kolom deskripsi di table barang
alter table barang
add column deskripsi text;

alter table barang
add column salah text;

# menghapus kolom salah
alter table barang
drop column salah;

# mengubah tipe data nama menjadi varchar 200, kemudian pindahkan setelah deskripsi
alter table barang
modify nama varchar(200) first;

alter table barang
modify id int not null;

# menambahkan nilai default
alter table barang
modify harga int not null default 0;

alter table barang
modify jumlah int not null default 0;

alter table barang
add waktu_dibuat timestamp not null default current_timestamp;

insert into barang (id, nama) values ('1', 'Toni');

# menghapus data table, kemudian dibuat ulang
truncate barang;

# menghapus tabel
drop table barang;