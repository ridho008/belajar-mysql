


create table guestbooks(
   id int not null auto_increment,
   email varchar(100) not null,
   title varchar(100) not null,
   content text,
   primary key (id)
) engine = InnoDB;

alter table guestbooks
add constraint email_unique unique (email);

insert into guestbooks (email, title, content)
values ('ridhosurya@gmail.com', 'halo', 'halo'),
      ('ToniKroos@gmail.com', 'halo', 'halo');

insert into guestbooks (email, title, content)
values ('guest1@gmail.com', 'halo', 'halo'),
      ('guest2@gmail.com', 'halo', 'halo');      

# UNION
# menampilkan email, jika ada email yang duplikat, otomatis akan muncul hanya 1 email
select distinct email from customers
union
select distinct email from guestbooks;


# UNION ALL
# menampilkan semua data hasil gabungan kedua tabel tanpa di distinct
select emails.email, count(emails.email) from (select email from customers
union all
select email from guestbooks) as emails
group by emails.email; 
select email from customers
union all
select email from guestbooks;

# INTERSECT -> operator tdk ada di mysql, gunakan sub-query
# penggunaan sama dengan INNER JOIN, menampilkan data yang saling terkait
select distinct email from customers where email in (select distinct email from guestbooks);
select distinct email from guestbooks;

select distinct customers.email from customers
inner join guestbooks on (guestbooks.email = customers.email);

# MINUS
# cek customers yang tidak mengisi guestbook
select distinct customers.email, guestbooks.email from customers
left join guestbooks on (customers.email = guestbooks.email)
where guestbooks.email is null;

insert into customers (email, first_name, last_name)
values ('guest1@gmail.com', 'guest1', 'guest1'),
      ('guest2@gmail.com', 'guest2', 'guest2');

delete from guestbooks where id = '3';