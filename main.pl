:- dynamic(macet / 3).
:- dynamic(using_vehicle / 1).
:- dynamic(find_n_solution/1).
:- dynamic(find_n_counter/1).
:- dynamic(visited / 1).

find_n(N, Term, Goal, Solutions) :- 
    % source: https://stackoverflow.com/questions/20852980/prolog-findall-for-limited-number-of-solutions
    (   set_find_n_counter(N),
        retractall(find_n_solution(_)),
        once((
            call(Goal),
            assertz(find_n_solution(Term)),
            dec_find_n_counter(M),
            M =:= 0
        )),
        fail
    ;   findall(Solution, retract(find_n_solution(Solution)), Solutions)
    ).

set_find_n_counter(N) :-
    retractall(find_n_counter(_)),
    assertz(find_n_counter(N)).

dec_find_n_counter(M) :-
    retract(find_n_counter(N)),
    M is N - 1,
    assertz(find_n_counter(M)).



% load routes
:- write('Loading all regions and paths....'), nl.
:- consult('routes.pl').
:- write('Regions loaded'), nl.


using_vehicle(car).


% change_vehicle / 0
change_vehicle_mode :-
    using_vehicle(car),
    retract(using_vehicle(car)),
    assert(using_vehicle(motorbike)),
    write('Vehicle mode switched to motorbike'), !.
change_vehicle_mode :-
    retract(using_vehicle(motorbike)),
    assert(using_vehicle(car)),
    write('Vehicle mode switched to car'), !.



% show_current_vehicle_mode / 0
show_current_vehicle_mode :-
    using_vehicle(car),
    write('Current vehicle mode is car'), !.
show_current_vehicle_mode :-
    write('Current vehicle mode is motorbike'), !.



% path_is_traversable / 2
path_is_traversable(A, B) :- using_vehicle(car), route(A, B, _, _), !.
path_is_traversable(A, B) :- using_vehicle(motorbike), route(A, B, _, is_not_toll), !.


% add_macet / 3
add_macet(A, B, AdditionalDuration) :-
    route(A, B, _, _),
    route(B, A, _, _),
    \+ macet(A, B, AdditionalDuration),
    \+ macet(B, A, AdditionalDuration), !,
    assert(macet(A, B, AdditionalDuration)),
    assert(macet(B, A, AdditionalDuration)).


% add_macet / 3
retract_macet(A, B) :-
    route(A, B, _, _),
    route(B, A, _, _),
    macet(A, B, _),
    macet(B, A, _), !,
    retract(macet(A, B, _)),
    retract(macet(B, A, _)), !.


% get_path_duration / 3
get_path_duration(A, B, TotalDuration) :-
    route(A, B, BaseDuration, _),
    macet(A, B, AdditionalDuration),
    TotalDuration is BaseDuration + AdditionalDuration, !.
get_path_duration(A, B, TotalDuration) :- 
    route(A, B, TotalDuration, _), !.


% get_shortest_route / 4
% get_shortest_route(From, To, Path, TotalDuration) :- dfs(From, To, Path, TotalDuration, []).

get_shortest_route(From, To, Path, TotalDuration) :- 
    retractall(visited(_)),
    find_n(
        100,
        p(Len0, Path0),
        path(From, To, Path0, Len0),
        Paths
    ),
    sort(Paths, Sorted),
    Sorted = [p(TotalDuration, Path0) | _],
    reverse(Path0, Path).

path(From, To, [To, From], Duration) :- 
    path_is_traversable(From, To), 
    get_path_duration(From, To, Duration).


path(From, To, [To | PathTail], Duration) :-
    path_is_traversable(Intermediate, To),
    \+ visited(Intermediate),
    get_path_duration(Intermediate, To, Duration1),
    path(From, Intermediate, PathTail, Duration0),
    Duration is Duration0 + Duration1,
    asserta(visited(Intermediate)).
