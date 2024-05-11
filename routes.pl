:- dynamic(route / 4).

% Non-Toll Roads
route('Pantai Indah Kapuk', 'Ancol', 36, is_not_toll).
route('Pantai Indah Kapuk', 'Cengkareng', 8, is_not_toll).
route('Pantai Indah Kapuk', 'GT PIK', 6, is_not_toll).
route('Sunter', 'Ancol', 20, is_not_toll).
route('Ancol', 'GT Ancol', 5, is_not_toll).
route('Ancol', 'Mangga Besar', 20, is_not_toll).


% Toll Roads
route('GT PIK', 'GT Ancol', 10, is_toll).
route('GT Ancol', 'GT Cempaka Putih', 5, is_toll).
route('GT Cempaka Putih', 'GT Pancoran', 6, is_toll).
route('GT Pancoran', 'GT Sudirman', 4, is_toll).
route('GT Sudirman', 'GT Slipi', 4, is_toll).
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