-- 1. MEMBUAT TABEL

CREATE TABLE siswa (
  id SERIAL PRIMARY KEY,
  nama VARCHAR(100) NOT NULL,
  umur INT,
  jurusan VARCHAR(50)
);

CREATE TABLE nilai (
  id SERIAL PRIMARY KEY,
  siswa_id INT REFERENCES siswa(id),
  mata_pelajaran VARCHAR(100),
  nilai INT
);

-- 2. MEMASUKKAN DATA SISWA

INSERT INTO siswa (nama, umur, jurusan) VALUES
('Andi', 16, 'IPA'),
('Budi', 17, 'IPS'),
('Citra', 16, 'IPA'),
('Dewi', 17, 'Bahasa'),
('Eko', 16, 'IPS');


-- 3. MEMASUKKAN DATA NILAI

INSERT INTO nilai (siswa_id, mata_pelajaran, nilai) VALUES
(1, 'Matematika', 85),
(1, 'Fisika', 90),
(2, 'Bahasa Inggris', 88),
(3, 'Biologi', 92),
(4, 'Sastra', 80),
(5, 'Ekonomi', 75);

