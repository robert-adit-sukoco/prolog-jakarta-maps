:- dynamic(route / 4).

% Non-Toll Roads
route('Pantai Indah Kapuk', 'Ancol', 36, is_not_toll).
route('Pantai Indah Kapuk', 'Cengkareng', 8, is_not_toll).
route('Pantai Indah Kapuk', 'GT PIK', 6, is_not_toll).
route('Sunter', 'Ancol', 20, is_not_toll).
route('Sunter', 'Cempaka Mas', 5, is_not_toll).
route('Ancol', 'GT Ancol', 5, is_not_toll).
route('Ancol', 'Mangga Besar', 20, is_not_toll).
route('Cengkareng', 'Central Park / Taman Anggrek', 5, is_not_toll).
route('Cengkareng', 'Daan Mogot', 5, is_not_toll).
route('Cengkareng', 'GT Cengkareng', 3, is_not_toll).
route('Cengkareng', 'Kota Tua', 6, is_not_toll).
route('Kota Tua', 'Mangga Besar', 5, is_not_toll).
route('Kota Tua', 'Tanah Abang', 5, is_not_toll).
route('Mangga Besar', 'Monas', 5, is_not_toll).
route('Daan Mogot', 'Central Park / Taman Anggrek', 6, is_not_toll).
route('Daan Mogot', 'Puri', 5, is_not_toll).
route('Central Park / Taman Anggrek', 'Slipi', 3, is_not_toll).
route('Central Park / Taman Anggrek', 'Tanah Abang', 6, is_not_toll).
route('Puri', 'GT Puri', 1, is_not_toll).
route('Puri', 'Kebon Jeruk', 5, is_not_toll).
route('Kebon Jeruk', 'Slipi', 5, is_not_toll).
route('Slipi', 'GT Slipi', 2, is_not_toll).
route('Slipi', 'Tanah Abang', 5, is_not_toll).
route('Slipi', 'Senayan', 5, is_not_toll).
route('Tanah Abang', 'Grand Indonesia', 7, is_not_toll).
route('Grand Indonesia', 'Bundaran HI', 1, is_not_toll).
route('Bundaran HI', 'Menteng', 5, is_not_toll).
route('Bundaran HI', 'Monas', 7, is_not_toll).
route('Bundaran HI', 'Sudirman', 7, is_not_toll).
route('Monas', 'Cempaka Mas', 8, is_not_toll).
route('Cempaka Mas', 'MOI', 4, is_not_toll).
route('Cempaka Mas', 'Cempaka Putih', 3, is_not_toll).
route('Menteng', 'Cikini', 5, is_not_toll).
route('Cikini', 'Manggarai', 5, is_not_toll).
route('MOI', 'Cempaka Putih', 4, is_not_toll).
route('MOI', 'Kelapa Gading', 10, is_not_toll).
route('Kelapa Gading', 'Pulomas', 10, is_not_toll).
route('Kelapa Gading', 'Velodrome', 10, is_not_toll).
route('Pulomas', 'Rawamangun', 2, is_not_toll).
route('Pulomas', 'Velodrome', 2, is_not_toll).
route('Cempaka Putih', 'GT Cempaka Putih', 2, is_not_toll).
route('Cempaka Putih', 'Rawamangun', 5, is_not_toll).
route('Cempaka Putih', 'Rawasari', 3, is_not_toll).
route('Rawasari', 'Pramuka', 3, is_not_toll).
route('Rawasari', 'Rawamangun', 5, is_not_toll).
route('Pramuka', 'Jatinegara', 4, is_not_toll).
route('Pramuka', 'Manggarai', 6, is_not_toll).
route('Pramuka', 'Rawamangun', 5, is_not_toll).
route('Rawamangun', 'Cipinang', 10, is_not_toll).
route('Rawamangun', 'Pemuda', 5, is_not_toll).
route('Rawamangun', 'Velodrome', 4, is_not_toll).
route('Velodrome', 'Pemuda', 2, is_not_toll).
route('Pemuda', 'Klender', 10, is_not_toll).
route('Klender', 'Pondok Bambu', 5, is_not_toll).
route('Pondok Bambu', 'Cipinang', 3, is_not_toll).
route('Pondok Bambu', 'Pondok Kelapa', 5, is_not_toll).
route('Cipinang', 'UKI', 8, is_not_toll).
route('UKI', 'Cililitan', 4, is_not_toll).
route('Jatinegara', 'Otista', 5, is_not_toll).
route('Otista', 'Dewi Sartika', 5, is_not_toll).
route('Otista', 'Tebet', 5, is_not_toll).
route('Dewi Sartika', 'Cililitan', 5, is_not_toll).
route('Dewi Sartika', 'Kalibata', 8, is_not_toll).
route('Dewi Sartika', 'Tebet', 3, is_not_toll).
route('Cililitan', 'Condet', 5, is_not_toll).
route('Cililitan', 'Kampung Rambutan', 10, is_not_toll).
route('Condet', 'Pasar Rebo', 7, is_not_toll).
route('Pasar Rebo', 'Antam', 5, is_not_toll).
route('Pasar Rebo', 'Cijantung', 5, is_not_toll).
route('Pasar Rebo', 'GT Pasar Rebo', 3, is_not_toll).
route('Pasar Rebo', 'Kampung Rambutan', 5, is_not_toll).
route('Senayan', 'Blok M', 4, is_not_toll).
route('Senayan', 'Gelora Bung Karno', 2, is_not_toll).
route('Senayan', 'Kebayoran Lama', 6, is_not_toll).
route('Senayan', 'Sudirman', 6, is_not_toll).
route('Blok M', 'Haji Nawi', 6, is_not_toll).
route('Blok M', 'Tendean', 5, is_not_toll).
route('Tendean', 'Kemang', 5, is_not_toll).
route('Tendean', 'Mampang', 4, is_not_toll).
route('Tendean', 'Pancoran', 5, is_not_toll).
route('Pancoran', 'GT Pancoran', 1, is_not_toll).
route('Pancoran', 'Kalibata', 3, is_not_toll).
route('Pancoran', 'Manggarai', 7, is_not_toll).
route('Pancoran', 'Pasar Minggu', 5, is_not_toll).
route('Pancoran', 'Sudirman', 5, is_not_toll).
route('Pasar Minggu', 'Antam', 5, is_not_toll).
route('Pasar Minggu', 'Kalibata', 4, is_not_toll).
route('Pasar Minggu', 'Pejaten', 5, is_not_toll).
route('Pasar Minggu', 'Ragunan', 5, is_not_toll).
route('Pasar Minggu', 'Tanjung Barat', 8, is_not_toll).
route('Antam', 'GT Antam', 1, is_not_toll).
route('Ragunan', 'Cilandak', 4, is_not_toll).
route('Ragunan', 'Pejaten', 8, is_not_toll).
route('Ragunan', 'Tanjung Barat', 8, is_not_toll).
route('Mampang', 'Pejaten', 4, is_not_toll).
route('Kemang', 'Cilandak', 5, is_not_toll).
route('Kemang', 'Haji Nawi', 6, is_not_toll).
route('Kemang', 'Pejaten', 5, is_not_toll).
route('Cilandak', 'Fatmawati', 6, is_not_toll).
route('Cilandak', 'GT Cilandak', 2, is_not_toll).
route('Fatmawati', 'Haji Nawi', 6, is_not_toll).
route('Fatmawati', 'Lebak Bulus', 5, is_not_toll).
route('Lebak Bulus', 'GT Lebak Bulus', 2, is_not_toll).
route('Lebak Bulus', 'Pondok Indah', 7, is_not_toll).
route('Pondok Indah', 'Kebayoran Lama', 4, is_not_toll).

% Toll Roads
route('GT PIK', 'GT Ancol', 10, is_toll).
route('GT Ancol', 'GT Cempaka Putih', 5, is_toll).
route('GT Cempaka Putih', 'GT Pancoran', 6, is_toll).
route('GT Pancoran', 'GT Sudirman', 4, is_toll).
route('GT Sudirman', 'GT Slipi', 4, is_toll).
route('GT Slipi', 'GT Cengkareng', 6, is_toll).
route('GT Cengkareng', 'GT PIK', 6, is_toll).
route('GT PIK', 'GT Puri', 10, is_toll).
route('GT Puri', 'GT Lebak Bulus', 8, is_toll).
route('GT Lebak Bulus', 'GT Cilandak', 8, is_toll).
route('GT Cilandak', 'GT Antam', 5, is_toll).
route('GT Antam', 'GT Pasar Rebo', 5, is_toll).


make_bidirectional :-
    findall(route(X, Y, Duration, IsToll), route(X, Y, Duration, IsToll), Routes),
    assert_bidirectional(Routes).

assert_bidirectional([]).
assert_bidirectional([route(X, Y, Duration, IsToll) | Rest]) :-
    assert(route(Y, X, Duration, IsToll)),
    assert_bidirectional(Rest).

:- make_bidirectional.