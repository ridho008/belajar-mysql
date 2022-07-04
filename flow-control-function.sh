# https://dev.mysql.com/doc/refman/8.0/en/flow-control-functions.html

# pengkondisian sama dengan switch
select id, category,
      case category
         when 'Makanan' then 'Enak'
         when 'Minuman' then 'Segar'
         else 'Apa itu ?'
            end as category
from products;

# pengkondisian control IF
select id, price,
      if(price <= 15000, 'Murah', 
         if(price >= 15000, 'Mahal', 'Mahal Kali')
      ) as 'Mahal?'
from products;

# IFNULL
# menampilkan description yang memiliki data kosong, lalu tampilkan
select id, name, ifnull(description, 'Kosong') from products;