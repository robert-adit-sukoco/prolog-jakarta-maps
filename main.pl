:- dynamic(macet / 3).
:- dynamic(neighbors / 4).
:- dynamic(using_vehicle / 1).

using_vehicle(car).

% change_vehicle / 0
change_vehicle_mode :-
    using_vehicle(car), !,
    retract(using_vehicle(car)),
    assert(using_vehicle(motorbike)),
    write('Vehicle mode switched to car').
change_vehicle_mode :-
    retract(using_vehicle(motorbike)),
    assert(using_vehicle(car)),
    write('Vehicle mode switched to motorbike').

% show_current_vehicle_mode / 0
show_current_vehicle_mode :-
    using_vehicle(car), !,
    write('Current vehicle mode is car').
show_current_vehicle_mode :-
    write('Current vehicle mode is motorbike').

% path_is_traversable / 2
path_is_traversable(A, B) :-
    using_vehicle(motorbike), !,
    neighbors(A, B, _, is_not_toll).
path_is_traversable(A, B) :- neighbors(A, B, _, _).

% get_path_length / 3
get_path_length(A, B, TotalDuration) :-
    neighbors(A, B, BaseDuration, _),
    macet(A, B, AdditionalDuration), !,
    TotalDuration is BaseDuration + AdditionalDuration.
get_path_length(A, B, TotalDuration) :- 
    neighbors(A, B, TotalDuration, _).