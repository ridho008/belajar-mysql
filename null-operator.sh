
# mencari data yang description isinya kosong
select * from products where description is null;

# mencari data yang description isinya ada
select * from products where description is not null;