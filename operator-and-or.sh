

# operator AND
select * from products where price >= 10000 and category = "makanan";

# operator OR
select * from products where price >= 5000 or price != 10000;

# prioritas tanda kurung
# defaultnya operator AND dulu, jika ingin mengabungkan kedua hal tersebut
select * from products where (category = "makanan" or quantity) > 5 and price = 10000;