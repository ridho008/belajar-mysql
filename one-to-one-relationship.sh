

# membua table wallet relationship one to one
create table wallet (
   id int not null auto_increment,
   id_customer int not null,
   balance int not null default 0,
   primary key (id),
   unique key id_customer_unique (id_customer),
   foreign key fk_wallet_customer (id_customer) references customers(id)
) engine = InnoDB;

insert into wallet (id_customer) values (1), (3);
insert into customers (email, first_name, last_name) values ('ToniKroos@gmail.com', 'Tony', 'Kroos');

select customers.email, wallet.balance from wallet join customers on (customers.id = wallet.id_customer);