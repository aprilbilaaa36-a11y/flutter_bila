// -- =====================================================================
-- TUGAS PRAKTIK SQL - STORED PROCEDURE DAN TRIGGER
-- Mata Pelajaran   : Basis Data
-- Konsentrasi      : Rekayasa Perangkat Lunak (RPL)
-- Nama Siswa       : ____________________
-- Kelas            : ____________________
-- DBMS             : MySQL / MariaDB
-- =====================================================================
-- CARA PAKAI:
-- Jalankan blok per blok (jangan sekaligus) supaya gampang di-screenshot.
-- =====================================================================


-- =====================================================================
-- TUGAS 1 - MEMBUAT DATABASE DAN TABEL
-- =====================================================================

DROP DATABASE IF EXISTS db_penjualan;
CREATE DATABASE db_penjualan;
USE db_penjualan;

-- 1. Tabel produk
CREATE TABLE produk (
    id_produk    INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk  VARCHAR(100)   NOT NULL,
    harga        DECIMAL(12,2)  NOT NULL,
    stok         INT            NOT NULL DEFAULT 0
);

-- 2. Tabel pelanggan
CREATE TABLE pelanggan (
    id_pelanggan    INT AUTO_INCREMENT PRIMARY KEY,
    nama_pelanggan  VARCHAR(100) NOT NULL,
    alamat          TEXT
);

-- 3. Tabel penjualan
CREATE TABLE penjualan (
    id_penjualan  INT AUTO_INCREMENT PRIMARY KEY,
    id_pelanggan  INT,
    tanggal       DATE,
    total         DECIMAL(12,2) DEFAULT 0,
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);

-- 4. Tabel detail_penjualan
CREATE TABLE detail_penjualan (
    id_detail     INT AUTO_INCREMENT PRIMARY KEY,
    id_penjualan  INT,
    id_produk     INT,
    jumlah        INT NOT NULL,
    subtotal      DECIMAL(12,2) DEFAULT 0,
    FOREIGN KEY (id_penjualan) REFERENCES penjualan(id_penjualan),
    FOREIGN KEY (id_produk)    REFERENCES produk(id_produk)
);

-- 5. Tabel log_perubahan_harga (untuk Trigger 4)
CREATE TABLE log_perubahan_harga (
    id_log           INT AUTO_INCREMENT PRIMARY KEY,
    id_produk        INT,
    harga_lama       DECIMAL(12,2),
    harga_baru       DECIMAL(12,2),
    waktu_perubahan  DATETIME
);


-- ---------------------------------------------------------------------
-- DATA AWAL
-- ---------------------------------------------------------------------

-- 10 data produk
INSERT INTO produk (nama_produk, harga, stok) VALUES
('Keyboard Mechanical', 450000.00, 25),
('Mouse Gaming',        250000.00, 30),
('Monitor 24 inch',    1750000.00, 10),
('Headset Bluetooth',   320000.00, 18),
('Flashdisk 64GB',       95000.00, 50),
('Hardisk External 1TB',850000.00, 12),
('Webcam HD',           275000.00, 15),
('Printer Inkjet',     1250000.00,  8),
('Kabel HDMI 2 Meter',   65000.00, 40),
('Cooling Pad Laptop',  185000.00, 20);

-- 5 data pelanggan
INSERT INTO pelanggan (nama_pelanggan, alamat) VALUES
('Ahmad Fauzi',    'Jl. Panglima Sudirman No. 12, Kraksaan'),
('Siti Nurhaliza', 'Jl. Raya Paiton No. 45, Probolinggo'),
('Budi Santoso',   'Jl. Diponegoro No. 7, Kraksaan'),
('Dewi Lestari',   'Jl. Ahmad Yani No. 88, Pajarakan'),
('Rizky Pratama',  'Jl. Mawar No. 21, Gending');

-- 5 data penjualan (total diisi 0 dulu, nanti dihitung trigger)
INSERT INTO penjualan (id_pelanggan, tanggal, total) VALUES
(1, '2026-09-01', 0),
(2, '2026-09-03', 0),
(3, '2026-09-05', 0),
(4, '2026-09-08', 0),
(5, '2026-09-10', 0);

-- CATATAN: data detail_penjualan sengaja diisi NANTI (setelah trigger dibuat)
--          supaya subtotal, stok, dan total otomatis terisi oleh trigger.


-- =====================================================================
-- TUGAS 2 - STORED PROCEDURE
-- =====================================================================

-- Procedure 1 - Menampilkan semua produk
DROP PROCEDURE IF EXISTS sp_tampil_produk;
DELIMITER //
CREATE PROCEDURE sp_tampil_produk()
BEGIN
    SELECT id_produk, nama_produk, harga, stok
    FROM produk
    ORDER BY id_produk;
END //
DELIMITER ;


-- Procedure 2 - Mencari produk berdasarkan nama
DROP PROCEDURE IF EXISTS sp_cari_produk;
DELIMITER //
CREATE PROCEDURE sp_cari_produk(IN p_nama VARCHAR(100))
BEGIN
    SELECT id_produk, nama_produk, harga, stok
    FROM produk
    WHERE nama_produk LIKE CONCAT('%', p_nama, '%');
END //
DELIMITER ;


-- Procedure 3 - Menambahkan produk baru
DROP PROCEDURE IF EXISTS sp_tambah_produk;
DELIMITER //
CREATE PROCEDURE sp_tambah_produk(
    IN p_nama  VARCHAR(100),
    IN p_harga DECIMAL(12,2),
    IN p_stok  INT
)
BEGIN
    INSERT INTO produk (nama_produk, harga, stok)
    VALUES (p_nama, p_harga, p_stok);

    SELECT CONCAT('Produk "', p_nama, '" berhasil ditambahkan.') AS pesan;
END //
DELIMITER ;


-- Procedure 4 - Mengubah harga produk berdasarkan ID
DROP PROCEDURE IF EXISTS sp_update_harga;
DELIMITER //
CREATE PROCEDURE sp_update_harga(
    IN p_id    INT,
    IN p_harga DECIMAL(12,2)
)
BEGIN
    DECLARE v_cek INT;

    SELECT COUNT(*) INTO v_cek FROM produk WHERE id_produk = p_id;

    IF v_cek = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ID produk tidak ditemukan!';
    ELSE
        UPDATE produk SET harga = p_harga WHERE id_produk = p_id;
        SELECT CONCAT('Harga produk ID ', p_id, ' berhasil diubah.') AS pesan;
    END IF;
END //
DELIMITER ;


-- Procedure 5 - Total penjualan pelanggan tertentu
DROP PROCEDURE IF EXISTS sp_total_penjualan_pelanggan;
DELIMITER //
CREATE PROCEDURE sp_total_penjualan_pelanggan(IN p_id_pelanggan INT)
BEGIN
    SELECT  p.id_pelanggan,
            p.nama_pelanggan,
            COUNT(j.id_penjualan)      AS jumlah_transaksi,
            IFNULL(SUM(j.total), 0)    AS total_belanja
    FROM pelanggan p
    LEFT JOIN penjualan j ON p.id_pelanggan = j.id_pelanggan
    WHERE p.id_pelanggan = p_id_pelanggan
    GROUP BY p.id_pelanggan, p.nama_pelanggan;
END //
DELIMITER ;


-- =====================================================================
-- TUGAS 3 - TRIGGER
-- =====================================================================

-- Trigger 2 (dibuat duluan karena BEFORE INSERT) - Menghitung subtotal
-- Sekaligus validasi stok: transaksi ditolak kalau stok kurang.
DROP TRIGGER IF EXISTS trg_hitung_subtotal;
DELIMITER //
CREATE TRIGGER trg_hitung_subtotal
BEFORE INSERT ON detail_penjualan
FOR EACH ROW
BEGIN
    DECLARE v_harga DECIMAL(12,2);
    DECLARE v_stok  INT;

    SELECT harga, stok INTO v_harga, v_stok
    FROM produk WHERE id_produk = NEW.id_produk;

    IF v_stok < NEW.jumlah THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stok produk tidak mencukupi!';
    END IF;

    SET NEW.subtotal = v_harga * NEW.jumlah;
END //
DELIMITER ;


-- Trigger 1 - Mengurangi stok produk setelah detail ditambahkan
DROP TRIGGER IF EXISTS trg_kurangi_stok;
DELIMITER //
CREATE TRIGGER trg_kurangi_stok
AFTER INSERT ON detail_penjualan
FOR EACH ROW
BEGIN
    UPDATE produk
    SET stok = stok - NEW.jumlah
    WHERE id_produk = NEW.id_produk;
END //
DELIMITER ;


-- Trigger 3 - Memperbarui total penjualan
DROP TRIGGER IF EXISTS trg_update_total_penjualan;
DELIMITER //
CREATE TRIGGER trg_update_total_penjualan
AFTER INSERT ON detail_penjualan
FOR EACH ROW
BEGIN
    UPDATE penjualan
    SET total = (
        SELECT IFNULL(SUM(subtotal), 0)
        FROM detail_penjualan
        WHERE id_penjualan = NEW.id_penjualan
    )
    WHERE id_penjualan = NEW.id_penjualan;
END //
DELIMITER ;


-- Trigger 4 - Mencatat perubahan harga produk
DROP TRIGGER IF EXISTS trg_log_perubahan_harga;
DELIMITER //
CREATE TRIGGER trg_log_perubahan_harga
AFTER UPDATE ON produk
FOR EACH ROW
BEGIN
    IF OLD.harga <> NEW.harga THEN
        INSERT INTO log_perubahan_harga
            (id_produk, harga_lama, harga_baru, waktu_perubahan)
        VALUES
            (OLD.id_produk, OLD.harga, NEW.harga, NOW());
    END IF;
END //
DELIMITER ;


-- ---------------------------------------------------------------------
-- 10 DATA DETAIL PENJUALAN (dimasukkan setelah trigger aktif)
-- subtotal, stok, dan total akan terisi OTOMATIS oleh trigger
-- ---------------------------------------------------------------------
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (1, 1, 2);
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (1, 5, 3);
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (2, 3, 1);
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (2, 9, 2);
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (3, 2, 2);
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (3, 4, 1);
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (4, 6, 1);
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (4, 10, 2);
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (5, 7, 3);
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (5, 8, 1);


-- =====================================================================
-- TUGAS 4 - PENGUJIAN  (jalankan satu per satu, screenshot hasilnya)
-- =====================================================================

-- Uji 1: Menampilkan semua produk
CALL sp_tampil_produk();

-- Uji 2: Menambahkan produk
CALL sp_tambah_produk('Mouse Wireless', 85000, 20);
SELECT * FROM produk WHERE nama_produk = 'Mouse Wireless';

-- Uji 3: Mencari produk
CALL sp_cari_produk('Keyboard');

-- Uji 4: Mengubah harga produk (memicu trg_log_perubahan_harga)
CALL sp_update_harga(3, 1900000);

-- Uji 5: Cek log perubahan harga
SELECT * FROM log_perubahan_harga;

-- Uji 6: Cek stok sebelum transaksi baru
SELECT id_produk, nama_produk, stok FROM produk WHERE id_produk = 2;

-- Uji 7: Menambahkan transaksi baru
INSERT INTO penjualan (id_pelanggan, tanggal, total) VALUES (1, CURDATE(), 0);
SELECT * FROM penjualan ORDER BY id_penjualan DESC LIMIT 1;

-- Uji 8: Menambahkan detail transaksi (ganti 6 dgn id_penjualan hasil Uji 7)
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (6, 2, 5);

-- Uji 9: Cek subtotal terisi otomatis
SELECT * FROM detail_penjualan WHERE id_penjualan = 6;

-- Uji 10: Cek stok berkurang (harusnya berkurang 5)
SELECT id_produk, nama_produk, stok FROM produk WHERE id_produk = 2;

-- Uji 11: Cek total penjualan ter-update
SELECT * FROM penjualan WHERE id_penjualan = 6;

-- Uji 12: Total penjualan per pelanggan
CALL sp_total_penjualan_pelanggan(1);

-- Uji 13: Uji validasi stok (SENGAJA GAGAL -> screenshot pesan errornya)
INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah) VALUES (6, 8, 999);
-- Hasil yang diharapkan: Error 1644 "Stok produk tidak mencukupi!"


-- =====================================================================
-- K. TANTANGAN PENGEMBANGAN
-- sp_transaksi_penjualan: transaksi lengkap + validasi stok
-- =====================================================================
DROP PROCEDURE IF EXISTS sp_transaksi_penjualan;
DELIMITER //
CREATE PROCEDURE sp_transaksi_penjualan(
    IN p_id_pelanggan INT,
    IN p_id_produk    INT,
    IN p_jumlah       INT
)
BEGIN
    DECLARE v_stok         INT DEFAULT 0;
    DECLARE v_cek_pel      INT DEFAULT 0;
    DECLARE v_cek_prd      INT DEFAULT 0;
    DECLARE v_id_penjualan INT;

    -- rollback otomatis kalau terjadi error di tengah transaksi
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    -- 1. Validasi pelanggan
    SELECT COUNT(*) INTO v_cek_pel FROM pelanggan WHERE id_pelanggan = p_id_pelanggan;
    IF v_cek_pel = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Pelanggan tidak ditemukan!';
    END IF;

    -- 2. Validasi produk
    SELECT COUNT(*) INTO v_cek_prd FROM produk WHERE id_produk = p_id_produk;
    IF v_cek_prd = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Produk tidak ditemukan!';
    END IF;

    -- 3. Cek stok
    SELECT stok INTO v_stok FROM produk WHERE id_produk = p_id_produk;
    IF v_stok < p_jumlah THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Transaksi ditolak: stok produk tidak mencukupi!';
    END IF;

    START TRANSACTION;

        -- 4. Simpan transaksi
        INSERT INTO penjualan (id_pelanggan, tanggal, total)
        VALUES (p_id_pelanggan, CURDATE(), 0);

        SET v_id_penjualan = LAST_INSERT_ID();

        -- 5. Simpan detail
        --    subtotal, stok, dan total dihitung otomatis oleh trigger
        INSERT INTO detail_penjualan (id_penjualan, id_produk, jumlah)
        VALUES (v_id_penjualan, p_id_produk, p_jumlah);

    COMMIT;

    -- 6. Tampilkan hasil transaksi
    SELECT  j.id_penjualan,
            pl.nama_pelanggan,
            pr.nama_produk,
            d.jumlah,
            d.subtotal,
            j.total,
            pr.stok AS sisa_stok
    FROM penjualan j
    JOIN pelanggan        pl ON pl.id_pelanggan = j.id_pelanggan
    JOIN detail_penjualan d  ON d.id_penjualan  = j.id_penjualan
    JOIN produk           pr ON pr.id_produk    = d.id_produk
    WHERE j.id_penjualan = v_id_penjualan;
END //
DELIMITER ;

-- Pengujian tantangan (berhasil)
CALL sp_transaksi_penjualan(2, 5, 4);

-- Pengujian tantangan (ditolak karena stok kurang)
CALL sp_transaksi_penjualan(2, 8, 500);


-- =====================================================================
-- G. ANALISIS
-- =====================================================================
/*
1. Apa perbedaan Stored Procedure dan Trigger?
   Stored Procedure adalah kumpulan perintah SQL yang disimpan di server dan
   dijalankan secara MANUAL menggunakan perintah CALL, serta bisa menerima
   parameter. Trigger dijalankan secara OTOMATIS oleh DBMS ketika terjadi
   event tertentu (INSERT, UPDATE, DELETE) pada sebuah tabel, tidak bisa
   dipanggil langsung dan tidak menerima parameter.

2. Kapan sebaiknya menggunakan Stored Procedure?
   Ketika ada proses/logika yang sering diulang dan perlu dipanggil dari
   aplikasi, misalnya pencarian data, laporan, atau proses transaksi yang
   terdiri dari banyak langkah. Procedure juga membuat kode aplikasi lebih
   ringkas, mengurangi lalu lintas jaringan, dan lebih aman dari SQL injection.

3. Kapan sebaiknya menggunakan Trigger?
   Ketika ada aturan bisnis yang HARUS selalu berjalan otomatis setiap kali
   data berubah, tanpa bergantung pada aplikasi. Contohnya pengurangan stok,
   perhitungan subtotal, dan pencatatan log/audit perubahan data.

4. Apa keuntungan penggunaan Trigger dalam sistem penjualan?
   - Stok, subtotal, dan total selalu konsisten tanpa dihitung manual.
   - Mengurangi kesalahan manusia (human error) saat input data.
   - Menjaga integritas data meskipun input berasal dari aplikasi berbeda.
   - Ada jejak audit otomatis (log perubahan harga) untuk pengawasan.

5. Apa yang terjadi jika stok produk lebih kecil daripada jumlah yang dijual?
   Tanpa validasi, stok akan menjadi MINUS (negatif) sehingga data tidak valid.
   Pada script ini sudah ditambahkan validasi di trigger trg_hitung_subtotal
   menggunakan SIGNAL SQLSTATE '45000', sehingga INSERT dibatalkan dan muncul
   pesan error "Stok produk tidak mencukupi!".

6. Mengapa perhitungan subtotal dapat dibuat menggunakan Trigger?
   Karena subtotal adalah nilai turunan (harga x jumlah) yang selalu dapat
   dihitung saat data detail dimasukkan. Dengan trigger BEFORE INSERT, nilai
   subtotal dihitung langsung di database sehingga pengguna cukup mengisi
   jumlah, dan hasilnya pasti konsisten untuk semua aplikasi yang mengakses.

7. Apa risiko penggunaan Trigger yang terlalu banyak dalam database?
   - Kinerja menurun karena setiap operasi memicu proses tambahan.
   - Sulit di-debug karena proses berjalan "tersembunyi" di belakang layar.
   - Berpotensi terjadi efek berantai (trigger memicu trigger lain) bahkan
     perulangan tak terhingga.
   - Pemeliharaan (maintenance) menjadi rumit bagi pengembang baru.

8. Bagaimana cara memastikan Stored Procedure dan Trigger bekerja dengan benar?
   Dengan melakukan pengujian sistematis: menyiapkan data uji, menjalankan
   procedure/insert, lalu memeriksa hasilnya dengan SELECT sebelum dan sesudah
   eksekusi. Uji juga kasus gagal (stok kurang, ID tidak ada) untuk memastikan
   validasi berjalan, dan periksa struktur objek dengan SHOW PROCEDURE STATUS
   serta SHOW TRIGGERS.
*/


-- =====================================================================
-- KESIMPULAN
-- =====================================================================
/*
Melalui praktik ini dapat disimpulkan bahwa Stored Procedure dan Trigger
sangat membantu dalam membangun sistem penjualan yang efisien dan akurat.
Stored Procedure memudahkan pemanggilan proses yang berulang seperti
menampilkan, mencari, menambah, dan mengubah data produk, serta menghitung
total penjualan pelanggan. Trigger memastikan proses otomatis seperti
pengurangan stok, perhitungan subtotal dan total transaksi, serta pencatatan
log perubahan harga berjalan tanpa campur tangan pengguna.

Dengan menggabungkan keduanya dan menambahkan validasi stok, database menjadi
lebih konsisten, aman dari kesalahan input, dan logika bisnis tetap terjaga
walaupun diakses dari aplikasi yang berbeda.
*/


-- =====================================================================
-- PERINTAH BANTU UNTUK DOKUMENTASI / SCREENSHOT
-- =====================================================================
-- SHOW TRIGGERS;
-- SHOW PROCEDURE STATUS WHERE Db = 'db_penjualan';
-- SELECT * FROM produk;
-- SELECT * FROM penjualan;
-- SELECT * FROM detail_penjualan;
-- SELECT * FROM log_perubahan_harga;