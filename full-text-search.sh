

# menambahkan fulltext search ke dalam kolom name, description
alter table products
add fulltext product_fulltext (name, description);

# menghapus full-text-search
alter table products
drop index product_fulltext

select * from products where name like '%Mie%' or description like '%Ayam%';

# mencari kata ayam menyeluruh per-kata
select * from products where match(name, description)
against('ayam' in natural language mode);

# mencari name, description, ada kata ayam (+ayam), tetapi tidak ada kata bakso (-bakso)
select * from products where match(name, description)
against('+ayam -bakso' in boolean mode);

# mencari kata bakso turunannya
select * from products where match(name, description)
against('bakso' with query expansion);