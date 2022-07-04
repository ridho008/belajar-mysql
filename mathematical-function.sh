

# https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html
select id, cos(price), sin(price), tan(price) from products;

# tampilkan price yang telah dibagi dengan 1000, lalu tampilkan pricenya diatas 10
select id, name, price, price div 1000 as 'Price in K'
from products
where price div 1000 > 10;select id, name, price
from products
where price div 1000 > 10;