:- dynamic(node / 4).
:- dynamic(calculated / 1).
:- dynamic(route / 3).

% route(a, b, 4).
% route(a, c, 2).
% route(b, c, 1).
% route(b, d, 5).
% route(c, d, 8).
% route(c, e, 10).
% route(d, e, 2).
% route(d, f, 6).
% route(e, f, 3).
% route(a, e, 3).

% node(a, 10000, unknown, []).
% node(b, 10000, unknown, []).
% node(c, 10000, unknown, []).
% node(d, 10000, unknown, []).
% node(e, 10000, unknown, []).
% node(f, 10000, unknown, []).

:- write('Loading all regions and paths....'), nl.
:- consult('routes2.pl').
:- write('Regions loaded'), nl.

update_neighbors(Center, W1, L1) :-
    route(Center, Neighbor, W2),
    \+ calculated(Neighbor),
    retract(node(Neighbor, PastW, unknown, PastL)),
    NewW is min(PastW, W1 + W2),
    append(L1, [Center], NewL),
    (NewW == PastW -> ChosenL = PastL ; ChosenL = NewL),
    assertz(node(Neighbor, NewW, unknown, ChosenL)),
    assertz(calculated(Neighbor)),
    update_neighbors(Center, W1, L1).

dijkstra(Src, Des, P, W) :-
    node(MinN, MinW, unknown, MinL),
    \+ (node(N, W, unknown, L), MinN \= N, W < MinW),
    retract(node(MinN, MinW, unknown, MinL)),
    assertz(node(MinN, MinW, known, MinL)),
    \+ update_neighbors(MinN, MinW, MinL),
    retractall(calculated(Node)),
    dijkstra(Src, Des, P, W).

get_shortest_route(Src, Des, FinalP, FinalW) :-
    retract(node(Src, 10000, unknown, [])),
    assertz(node(Src, 0, unknown, [])),
    \+ dijkstra(Src, Des, P, W),
    node(Des, FinalW, known, P),
    append(P, [Des], FinalP), !.