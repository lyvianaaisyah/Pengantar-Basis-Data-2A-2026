create database db_modul6;
use db_modul6;


-- bikin tabel kategori
create table kategori (
    id_kategori int primary key,
    nama_kategori varchar(50)
);

-- bikin tabel produk
create table produk (
    id_produk int primary key,
    nama_produk varchar(100),
    harga int,
    id_kategori int,
    foreign key (id_kategori) references kategori (id_kategori)
);

-- bikin tabel transaksi
create table transaksi (
    id_transaksi int primary key,
    id_produk int,
    jumlah int,
    foreign key (id_produk) references produk (id_produk)
);

-- masukin data kategori
insert into kategori values
(1, 'Laptop'),
(2, 'Smartphone'),
(3, 'Aksesoris');

-- masukin data produk
insert into produk values
(101, 'Laptop Asus', 8500000, 1),
(102, 'Laptop Lenovo', 7500000, 1),
(103, 'iPhone 13', 12000000, 2),
(104, 'Mouse Logitech', 150000, 3),
(105, 'Keyboard Gaming', 500000, 3);

-- masukin data transaksi
insert into transaksi values
(1, 101, 2),
(2, 104, 5),
(3, 103, 1),
(4, 105, 3),
(5, 101, 1);

-- WAJIB DIBIKIN: ini view dari kegiatan 6 yang bakal dipakai di soal nomor 5
create view view_produk_kategori as
select produk.nama_produk, produk.harga, kategori.nama_kategori
from produk
join kategori on produk.id_kategori = kategori.id_kategori;




-- nomor 1: harga di bawah rata-rata
select pr.nama_produk, pr.harga
from produk pr
where pr.harga < (select avg(harga) from produk);

-- nomor 2: produk yang nggak laku / belum ada transaksi (pakai not exists)
select pr.nama_produk
from produk pr
where not exists (
    select * from transaksi tr 
    where tr.id_produk = pr.id_produk
);

-- nomor 3: view histori transaksi produk
create view view_histori_transaksi as 
select pr.nama_produk, tr.jumlah
from transaksi tr
join produk pr on tr.id_produk = pr.id_produk;

-- nomor 4: transaksi lebih dari 2 dengan subquery
select pr.nama_produk
from produk pr
where pr.id_produk in (
    select id_produk from transaksi where jumlah > 2
);

-- nomor 5: harga tertinggi dari view 
select * from view_produk_kategori
order by harga desc
limit 1;																			