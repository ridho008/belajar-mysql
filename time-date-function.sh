

# https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html
# menampilkan tahun dan bulan
select id, created_at,
      extract(year from created_at) as year,
      extract(month from created_at) as month
from products;

select id, created_at,
      year(created_at) as year,
      month(created_at) as month
from products;