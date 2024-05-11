:- dynamic(macet / 3).
:- dynamic(using_vehicle / 1).
:- dynamic(temp_shortest_duration / 1).



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

get_shortest_route(From, To, Path, TotalDuration) :- path(From, To, Path0, TotalDuration), !, reverse(Path0, Path).

path(A, B, [B, A], Duration) :- 
    using_vehicle(car), 
    route(A, B, BaseDuration, _),
    macet(A, B, AdditionalDuration), !,
    Duration is BaseDuration + AdditionalDuration.
path(A, B, [B, A], Duration) :- 
    using_vehicle(car), 
    route(A, B, Duration, _).

path(A, B, [B|Ps], Duration) :-
    using_vehicle(car),
    route(C, B, Duration1, _),
    macet(C, B, AdditionalDuration),
    path(A, C, Ps, Duration0),
    Duration is Duration0 + Duration1 + AdditionalDuration, !.
path(A, B, [B|Ps], Duration) :-
    using_vehicle(car),
    route(C, B, Duration1, _),
    path(A, C, Ps, Duration0),
    Duration is Duration0 + Duration1, !.

path(A, B, [B, A], Duration) :- 
    using_vehicle(motorbike), 
    route(A, B, Duration, is_not_toll),
    macet(A, B, AdditionalDuration), !,
    Duration is BaseDuration + AdditionalDuration.
path(A, B, [B, A], Duration) :- 
    using_vehicle(motorbike), 
    route(A, B, Duration, is_not_toll).

path(A, B, [B|Ps], Duration) :-
    using_vehicle(car),
    route(C, B, Duration1, is_not_toll),
    macet(C, B, AdditionalDuration),
    path(A, C, Ps, Duration0),
    Duration is Duration0 + Duration1 + AdditionalDuration, !.
path(A, B, [B|Ps], Duration) :-
    using_vehicle(car),
    route(C, B, Duration1, is_not_toll),
    path(A, C, Ps, Duration0),
    Duration is Duration0 + Duration1, !.

% THIS DFS IS STILL BUGGY, TEMPORARILY USING A MORE BRUTEFORCE-ISH ALGO (the predicate 'path' above)
% dfs / 5
dfs(Start, End, Path, Duration, Visited) :-
    dfs_acc(Start, End, [Start], Path, Duration, Visited).

% dfs_acc / 6
dfs_acc(End, End, Path, Path, 0, _) :- !.
dfs_acc(Current, End, Path, FinalPath, TotalDuration, Visited) :-
    path_is_traversable(Current, Next),
    \+ member(Next, Visited),
    get_path_duration(Current, Next, Duration),
    append(Path, [Next], NewPath),
    dfs_acc(Next, End, NewPath, FinalPath, RestDuration, [Next | Visited]),
    TotalDuration is Duration + RestDuration.