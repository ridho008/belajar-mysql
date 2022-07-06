

insert into products (id, name, price, quantity)
values ("X0001", "P1X", 10000, 10),
      ("X0002", "P2X", 10000, 10),
      ("X0003", "P3X", 10000, 10);

insert into categories (id, name)
values ("C004", "Gadget"),
      ("C005", "Pc");

# mengambil data yang berelasi, misalnya kategori C004 dan C005 tidak muncul, karena products tidak ada yang menggunakan categories tersebut.
select * from categories
inner join products on (products.id_category = categories.id);