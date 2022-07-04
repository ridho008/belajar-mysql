

# mencari price diantaran harga 5000 dan 10000
select * from products where price between 5000 and 10000;

# mencari price tidak diantara 5000 and 10000, jdi price yang muncul akan lebih dari 10000
select * from products where price not between 5000 and 10000;