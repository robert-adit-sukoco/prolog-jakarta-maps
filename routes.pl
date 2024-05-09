:- dynamic(route / 4).

route('Pantai Indah Kapuk', 'Ancol', 36, is_not_toll).
route('Pantai Indah Kapuk', 'Cengkareng', 8, is_not_toll).
route('GT PIK', 'GT Ancol', 10, is_toll).


make_bidirectional :-
    findall(route(X, Y, Duration, IsToll), route(X, Y, Duration, IsToll), Routes),
    assert_bidirectional(Routes).

assert_bidirectional([]).
assert_bidirectional([route(X, Y, Duration, IsToll) | Rest]) :-
    assert(route(Y, X, Duration, IsToll)),
    assert_bidirectional(Rest).

:- make_bidirectional.