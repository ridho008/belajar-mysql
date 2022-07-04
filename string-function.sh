
# https://dev.mysql.com/doc/refman/8.0/en/string-functions.html
# lower, mengecilkan string
# length, menghitung jumlah panjang string
select id, lower(name) as 'Name Lower',
         length(name) as 'Name Length',
         upper(name) as 'Name Uppercase'
from products;