

create table admin(
   id int not null auto_increment,
   first_name varchar(100) not null,
   last_name varchar(100) not null,
   primary key (id)
) engine = InnoDB;

insert into admin (first_name, last_name)
values("Ridho", "Surya"),
      ("Rahmani", "Hasin"),
      ("Harun", "Shaygan");

insert into admin (first_name, last_name)
values("Wahina", "TUas");

# melihat id terakhir yang ditambahkan
select last_insert_id();