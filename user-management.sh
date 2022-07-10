

# membuat user baru
create user 'ridho'@'localhost';
create user 'surya'@'%';

# menghapus user
drop user 'ridho'@'localhost';
drop user 'surya'@'%';

# menambahkan hak akses pada user
# hanya bisa menampilkan data di semua table
grant select on belajar_mysql.* to 'ridho'@'localhost';

grant insert, update, delete on belajar_mysql.* to 'surya'@'%';

# menampilkan detail grants
show grants for 'ridho'@'localhost';

# tambah/ubah password user
SET PASSWORD FOR 'ridho'@'localhost' = PASSWORD('rahasia');
SET PASSWORD FOR 'ridho'@'localhost' = 'auth_string';
set password for 'surya'@'%' = 'rahasia';