% route / 4
route(A, B, Duration, is_toll) :- route(B, A, Duration, is_toll).
route(A, B, Duration, is_not_toll) :- route(B, A, Duration, is_not_toll).


% LIST OF ROUTES
route('Pantai Indah Kapuk', 'Ancol', 36, is_not_toll).
route('Pantai Indah Kapuk', 'Cengkareng', 8, is_not_toll).
route('GT PIK', 'GT Ancol', 10, is_toll).