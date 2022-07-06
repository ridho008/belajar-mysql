

select * from categories
cross join products;

create table numbers(
   id int not null,
   primary key (id)
) engine = InnoDB;

insert into numbers (id) values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

# membuat perkalian 1-10
select numbers1.id, numbers2.id, (numbers1.id * numbers2.id) from numbers as numbers1 cross join numbers as numbers2 order by numbers1.id, numbers2.id;