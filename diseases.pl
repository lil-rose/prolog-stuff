symptom(flu, fever).
symptom(flu, cough).
symptom(anemia, tiredness).

cure(fever, aspirin).
cure(cough, syrup).
cure(tiredness, vitamins).

sick_of(manuel, flu).
sick_of(alicia, anemia).

% P: Person, R: Remedy.
recipe(P, R) :- sick_of(P, I), symptom(I, S), cure(S, R).