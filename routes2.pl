:- dynamic(route / 3).
:- dynamic(node / 4).

route('Pantai Indah Kapuk', 'Ancol', 36).
route('Pantai Indah Kapuk', 'Cengkareng', 8).
route('Pantai Indah Kapuk', 'GT PIK', 6).
route('Sunter', 'Ancol', 20).
route('Sunter', 'Cempaka Mas', 5).
route('Ancol', 'GT Ancol', 5).
route('Ancol', 'Mangga Besar', 20).
route('Cengkareng', 'Central Park / Taman Anggrek', 5).
route('Cengkareng', 'Daan Mogot', 5).
route('Cengkareng', 'GT Cengkareng', 3).
route('Cengkareng', 'Kota Tua', 6).
route('Kota Tua', 'Mangga Besar', 5).
route('Kota Tua', 'Tanah Abang', 5).
route('Mangga Besar', 'Monas', 5).
route('Daan Mogot', 'Central Park / Taman Anggrek', 6).
route('Daan Mogot', 'Puri', 5).
route('Central Park / Taman Anggrek', 'Slipi', 3).
route('Central Park / Taman Anggrek', 'Tanah Abang', 6).
route('Puri', 'GT Puri', 1).
route('Puri', 'Kebon Jeruk', 5).
route('Kebon Jeruk', 'Slipi', 5).
route('Slipi', 'GT Slipi', 2).
route('Slipi', 'Tanah Abang', 5).
route('Slipi', 'Senayan', 5).
route('Tanah Abang', 'Grand Indonesia', 7).
route('Grand Indonesia', 'Bundaran HI', 1).
route('Bundaran HI', 'Menteng', 5).
route('Bundaran HI', 'Monas', 7).
route('Bundaran HI', 'Sudirman', 7).
route('Monas', 'Cempaka Mas', 8).
route('Cempaka Mas', 'MOI', 4).
route('Cempaka Mas', 'Cempaka Putih', 3).
route('Menteng', 'Cikini', 5).
route('Cikini', 'Manggarai', 5).
route('MOI', 'Cempaka Putih', 4).
route('MOI', 'Kelapa Gading', 10).
route('Kelapa Gading', 'Pulomas', 10).
route('Kelapa Gading', 'Velodrome', 10).
route('Pulomas', 'Rawamangun', 2).
route('Pulomas', 'Velodrome', 2).
route('Cempaka Putih', 'GT Cempaka Putih', 2).
route('Cempaka Putih', 'Rawamangun', 5).
route('Cempaka Putih', 'Rawasari', 3).
route('Rawasari', 'Pramuka', 3).
route('Rawasari', 'Rawamangun', 5).
route('Pramuka', 'Jatinegara', 4).
route('Pramuka', 'Manggarai', 6).
route('Pramuka', 'Rawamangun', 5).
route('Rawamangun', 'Cipinang', 10).
route('Rawamangun', 'Pemuda', 5).
route('Rawamangun', 'Velodrome', 4).
route('Velodrome', 'Pemuda', 2).
route('Pemuda', 'Klender', 10).
route('Klender', 'Pondok Bambu', 5).
route('Pondok Bambu', 'Cipinang', 3).
route('Pondok Bambu', 'Pondok Kelapa', 5).
route('Cipinang', 'UKI', 8).
route('UKI', 'Cililitan', 4).
route('Jatinegara', 'Otista', 5).
route('Otista', 'Dewi Sartika', 5).
route('Otista', 'Tebet', 5).
route('Dewi Sartika', 'Cililitan', 5).
route('Dewi Sartika', 'Kalibata', 8).
route('Dewi Sartika', 'Tebet', 3).
route('Cililitan', 'Condet', 5).
route('Cililitan', 'Kampung Rambutan', 10).
route('Condet', 'Pasar Rebo', 7).
route('Pasar Rebo', 'Antam', 5).
route('Pasar Rebo', 'Cijantung', 5).
route('Pasar Rebo', 'GT Pasar Rebo', 3).
route('Pasar Rebo', 'Kampung Rambutan', 5).
route('Senayan', 'Blok M', 4).
route('Senayan', 'Gelora Bung Karno', 2).
route('Senayan', 'Kebayoran Lama', 6).
route('Senayan', 'Sudirman', 6).
route('Blok M', 'Haji Nawi', 6).
route('Blok M', 'Tendean', 5).
route('Tendean', 'Kemang', 5).
route('Tendean', 'Mampang', 4).
route('Tendean', 'Pancoran', 5).
route('Pancoran', 'GT Pancoran', 1).
route('Pancoran', 'Kalibata', 3).
route('Pancoran', 'Manggarai', 7).
route('Pancoran', 'Pasar Minggu', 5).
route('Pancoran', 'Sudirman', 5).
route('Pasar Minggu', 'Antam', 5).
route('Pasar Minggu', 'Kalibata', 4).
route('Pasar Minggu', 'Pejaten', 5).
route('Pasar Minggu', 'Ragunan', 5).
route('Pasar Minggu', 'Tanjung Barat', 8).
route('Antam', 'GT Antam', 1).
route('Ragunan', 'Cilandak', 4).
route('Ragunan', 'Pejaten', 8).
route('Ragunan', 'Tanjung Barat', 8).
route('Mampang', 'Pejaten', 4).
route('Kemang', 'Cilandak', 5).
route('Kemang', 'Haji Nawi', 6).
route('Kemang', 'Pejaten', 5).
route('Cilandak', 'Fatmawati', 6).
route('Cilandak', 'GT Cilandak', 2).
route('Fatmawati', 'Haji Nawi', 6).
route('Fatmawati', 'Lebak Bulus', 5).
route('Lebak Bulus', 'GT Lebak Bulus', 2).
route('Lebak Bulus', 'Pondok Indah', 7).
route('Pondok Indah', 'Kebayoran Lama', 4).

route('GT PIK', 'GT Ancol', 10).
route('GT Ancol', 'GT Cempaka Putih', 5).
route('GT Cempaka Putih', 'GT Pancoran', 6).
route('GT Pancoran', 'GT Sudirman', 4).
route('GT Sudirman', 'GT Slipi', 4).
route('GT Slipi', 'GT Cengkareng', 6).
route('GT Cengkareng', 'GT PIK', 6).
route('GT PIK', 'GT Puri', 10).
route('GT Puri', 'GT Lebak Bulus', 8).
route('GT Lebak Bulus', 'GT Cilandak', 8).
route('GT Cilandak', 'GT Antam', 5).
route('GT Antam', 'GT Pasar Rebo', 5).

node('Ancol', 10000, unknown, []).
node('Pantai Indah Kapuk', 10000, unknown, []).
node('Cengkareng', 10000, unknown, []).
node('Mangga Besar', 10000, unknown, []).
node('Kota Tua', 10000, unknown, []).
node('Sunter', 10000, unknown, []).
node('Daan Mogot', 10000, unknown, []).
node('Puri', 10000, unknown, []).
node('Central Park / Taman Anggrek', 10000, unknown, []).
node('Kebon Jeruk', 10000, unknown, []).
node('Slipi', 10000, unknown, []).
node('Tanah Abang', 10000, unknown, []).
node('Grand Indonesia', 10000, unknown, []).
node('Bundaran HI', 10000, unknown, []).
node('Menteng', 10000, unknown, []).
node('Cikini', 10000, unknown, []).
node('Monas', 10000, unknown, []).
node('Cempaka Mas', 10000, unknown, []).
node('Cempaka Putih', 10000, unknown, []).
node('MOI', 10000, unknown, []).
node('Kelapa Gading', 10000, unknown, []).
node('Pulomas', 10000, unknown, []).
node('Velodrome', 10000, unknown, []).
node('Rawamangun', 10000, unknown, []).
node('Rawasari', 10000, unknown, []).
node('Pramuka', 10000, unknown, []).
node('Pemuda', 10000, unknown, []).
node('Klender', 10000, unknown, []).
node('Pondok Bambu', 10000, unknown, []).
node('Pondok Kelapa', 10000, unknown, []).
node('Cipinang', 10000, unknown, []).
node('Jatinegara', 10000, unknown, []).
node('Otista', 10000, unknown, []).
node('Dewi Sartika', 10000, unknown, []).
node('UKI', 10000, unknown, []).
node('Cililitan', 10000, unknown, []).
node('Condet', 10000, unknown, []).
node('Pasar Rebo', 10000, unknown, []).
node('Kampung Rambutan', 10000, unknown, []).
node('Cijantung', 10000, unknown, []).
node('Manggarai', 10000, unknown, []).
node('Pancoran', 10000, unknown, []).
node('Tebet', 10000, unknown, []).
node('Kalibata', 10000, unknown, []).
node('Tendean', 10000, unknown, []).
node('Sudirman', 10000, unknown, []).
node('Senayan', 10000, unknown, []).
node('Blok M', 10000, unknown, []).
node('Gelora Bung Karno', 10000, unknown, []).
node('Kebayoran Lama', 10000, unknown, []).
node('Pondok Indah', 10000, unknown, []).
node('Lebak Bulus', 10000, unknown, []).
node('Haji Nawi', 10000, unknown, []).
node('Fatmawati', 10000, unknown, []).
node('Kemang', 10000, unknown, []).
node('Cilandak', 10000, unknown, []).
node('Mampang', 10000, unknown, []).
node('Pejaten', 10000, unknown, []).
node('Ragunan', 10000, unknown, []).
node('Pasar Minggu', 10000, unknown, []).
node('Tanjung Barat', 10000, unknown, []).
node('Antam', 10000, unknown, []).
node('GT PIK', 10000, unknown, []).
node('GT Cengkareng', 10000, unknown, []).
node('GT Ancol', 10000, unknown, []).
node('GT Puri', 10000, unknown, []).
node('GT Slipi', 10000, unknown, []).
node('GT Sudirman', 10000, unknown, []).
node('GT Pancoran', 10000, unknown, []).
node('GT Cempaka Putih', 10000, unknown, []).
node('GT Lebak Bulus', 10000, unknown, []).
node('GT Cilandak', 10000, unknown, []).
node('GT Antam', 10000, unknown, []).
node('GT Pasar Rebo', 10000, unknown, []).

make_bidirectional :-
    findall(route(X, Y, Duration), route(X, Y, Duration), Routes),
    assert_bidirectional(Routes).

assert_bidirectional([]).
assert_bidirectional([route(X, Y, Duration) | Rest]) :-
    assert(route(Y, X, Duration)),
    assert_bidirectional(Rest).

:- make_bidirectional.