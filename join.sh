

# join dengan table products
select * from wishlist join products on (wishlist.id_product = products.id);
select w.id as id_wishlist, p.name as product_name, p.id as product_id, w.description from wishlist as w join products as p on (w.id_product = p.id);

alter table wishlist
add column customer_id int;

alter table wishlist
add constraint fk_wishlist_customer
foreign key (customer_id) references customers(id);

update wishlist set customer_id = 1 where id = 1;

select customers.email, products.id, products.name, wishlist.description
from wishlist
join products on wishlist.id_product = products.id
join customers on wishlist.customer_id = customers.id;
