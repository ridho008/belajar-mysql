

start transaction;

insert into guestbooks (email, title, content)
values ('contoh1', 'contoh1', 'contoh1'),
      ('contoh2', 'contoh2', 'contoh2'),
      ('contoh3', 'contoh3', 'contoh3');

# artinya melakukan perubahan permanen yang berada didalam start transaction
commit;

# memulai transaksi
start transaction;

delete from guestbooks;

# mengembalikan data yang telah dihapus
rollback;