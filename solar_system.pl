satellites(mercury, 0).
satellites(venus, 0).
satellites(earth, 1).
satellites(mars, 2).
satellites(jupyter, 50).
satellites(saturn, 53).
satellites(uranus, 27).
satellites(neptune, 13).

distance_to_sun(mercury, 36).
distance_to_sun(venus, 67).
distance_to_sun(earth, 93).
distance_to_sun(mars, 141).
distance_to_sun(jupyter, 484).
distance_to_sun(saturn, 886).
distance_to_sun(uranus, 1790).
distance_to_sun(neptune, 2800).

% wich one has more satellites?
has_more_satellites(P1, P2) :-
    satellites(P1, Cant1),
    satellites(P2, Cant2),
    Cant1 > Cant2.

% can have life?
can_have_life(P) :-
    distance_to_sun(P, Dist),
    Dist >= 93,
    satellites(P, Cant),
    Cant == 1.

