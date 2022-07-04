

insert into products (id, name, category, description, price, quantity)
values("P0008","Oreo", "Makanan", "Rasa Cokelat", 1000, 10);

alter table products
add constraint price_check check (price >= 1000 and price <= 1000000);

insert into products (id, name, category, description, price, quantity)
values("P0009", "Permen", "Makanan", "Rasa Cokelat", 500, 10);