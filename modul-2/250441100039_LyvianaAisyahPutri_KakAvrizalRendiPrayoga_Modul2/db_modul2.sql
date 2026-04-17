-- create database rs_modul2
-- use rs_modul2


-- soal 1
-- membuat tabel dokter
create table dokter (
    id_dokter int primary key,
    nama_dokter varchar(100),
    spesialisasi varchar(50)
);

-- membuat tabel pasien
-- create table pasien (
--     id_pasien int primary key,
--     nama_pasien varchar(100),
--     tanggal_lahir date,
--     no_telepon varchar(15)
-- );

-- membuat tabel rekam_medis
-- create table rekam_medis (
--     id_rekam int primary key,
--     id_pasien int,
--     id_dokter int,
--     tanggal_periksa date,
--     diagnosis text,
--     foreign key (id_pasien) references pasien (id_pasien) on delete restrict,
--     foreign key (id_dokter) references dokter (id_dokter) on delete restrict
-- );





-- soal 2
-- tambah 2 dokter
-- insert into dokter values 
-- (1, 'dr. budi santoso', 'umum'),
-- (2, 'dr. siti aminah', 'anak');

-- tambah 2 pasien
-- insert into pasien values 
-- (101, 'andi wirawan', '1995-05-12', '08123456789'),
-- (102, 'ratna sari', '2010-11-20', '08987654321');

-- tambah 2 rekam medis valid
-- insert into rekam_medis values 
-- (1001, 101, 1, '2026-04-01', 'flu dan radang tenggorokan'),
-- (1002, 102, 2, '2026-04-02', 'demam berdarah');
 

-- tambah dengan id_dokter yang tidak ada
-- insert into rekam_medis values 
-- (1003, 101, 99, '2026-04-03', 'sakit perut');



-- soal 3
-- ubah nomor telepon pasien (andi wirawan)
-- update pasien 
-- set no_telepon = '081111222333' 
-- where id_pasien = 101;

-- -- ubah spesialisasi dokter (dr. budi)
-- update dokter 
-- set spesialisasi = 'penyakit dalam' 
-- where id_dokter = 1;



-- -- hapus salah satu rekam medis
-- delete from rekam_medis 
-- where id_rekam = 1002;



-- soal 4
-- hapus tabel lama dulu
-- drop table rekam_medis;

-- -- buat tabel baru dengan CASCADE pada id_dokter
-- create table rekam_medis (
--     id_rekam int primary key,
--     id_pasien int,
--     id_dokter int,
--     tanggal_periksa date,
--     diagnosis text,
--     foreign key (id_pasien) references pasien (id_pasien) on delete restrict,
--     foreign key (id_dokter) references dokter (id_dokter) on delete cascade
-- );

-- -- masukkan data 2 rekam medis dengan id_dokter yang sama 
-- insert into rekam_medis values 
-- (2001, 101, 1, '2026-04-10', 'migrain'),
-- (2002, 102, 1, '2026-04-11', 'asam lambung');

-- -- hapus dokter dengan id 1
-- delete from dokter where id_dokter = 1;

-- -- tampilkan hasilnya
-- select * from rekam_medis;



-- soal 5
-- reset tabel seperti semula (RESTRICT)
-- drop table rekam_medis;

-- create table rekam_medis(
-- 	id_rekam int primary key,
--     id_pasien int,
--     id_dokter int,
--     tanggal_periksa date,
--     diagnosis text,
--     foreign key (id_pasien) references pasien (id_pasien) on delete restrict,
--     foreign key (id_dokter) references dokter (id_dokter) on delete restrict
-- );

-- -- isi minimal 2 data rekam medis lagi (Pastikan id_dokter 2 masih ada, jika hilang insert lagi)
-- insert into rekam_medis values 
-- (3001, 101, 2, '2026-04-20', 'cek darah'),
-- (3002, 102, 2, '2026-04-21', 'cek gula');

-- -- 1. Jalankan TRUNCATE pada rekam_medis
-- truncate table rekam_medis;		


-- -- 2. Jalankan TRUNCATE pada pasien
-- truncate table pasien;

