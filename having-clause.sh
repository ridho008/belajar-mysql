# https://dev.mysql.com/doc/refman/8.0/en/group-by-handling.html

# filter kategori yang totalnya di atas 3
select count(id) as total, category from products group by category having total > 3;

# filter price total berdsarkan totalnya diatas 1, artinya 
# +-------+-------+
# | total | price |
# +-------+-------+
# |     2 | 10000 |
# |     2 | 15000 |
# +-------+-------+
select count(id) as total, price from products group by price having total > 1;