

# https://dev.mysql.com/doc/refman/8.0/en/arithmetic-functions.html
select 10 + 10 as hasil;

# tampilkan price yang sudah dibagi dengan 1000 yaitu menggunakan DIV (bilangan bulat)
select id, name, price, price div 1000 as 'Price in K' from products;