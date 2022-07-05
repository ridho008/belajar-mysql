

# menambahkan index di table sellers
create table sellers(
   id int not null auto_increment,
   name1 varchar(100),
   name2 varchar(100),
   name3 varchar(100),
   email varchar(100) not null,
   primary key (id),
   unique key email_unique (email),
   index name_index_1 (name1),
   index name_index_2 (name2),
   index name_index_3 (name3),
   index name1_name2_name3(name1, name2, name3)
) engine = InnoDB;

# jika pencarian dari kolom name1 akan cepat
# jika pencarian dari kolom name1 dan name2 juga akan cepat
# jika pencarian dari kolom name1 dan name2 dan name3 juga akan cepat
select * from sellers where name1 = 'X';
select * from sellers where name1 = 'X' and name2 = 'X';
select * from sellers where name1 = 'X' and name2 = 'X' and name3 = 'X';

# jika pencarian kolomnya dari name2, tidak akan cepat
select * from sellers where name2 = 'X' and name3 = 'X';

# menambahkan index ke dalam tabel
alter table sellers
add index name_index (name);

# menghapus index di tabel
alter table sellers
drop index name_index_1;