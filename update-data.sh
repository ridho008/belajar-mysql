

# menambahkan kolom categori dengan tipe enum
alter table products
add column category enum("Makanan", "Minuman", "DLL")
after name;

# update 1 row
update products
set category = "Makanan",
   description = "Enak"
where id = "P0001"

# mengubah denga value kolom
update products
set price = price + 5000
where id = "P0001";

update products set category = "Makanan" where id = "P0007";