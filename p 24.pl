% Facts: Define diets based on diseases
diet(high_blood_pressure, [low_salt, high_fiber, fruits, vegetables, lean_protein, whole_grains]).
diet(diabetes, [low_sugar, low_carb, high_fiber, lean_protein, vegetables, whole_grains]).
diet(high_cholesterol, [low_saturated_fat, high_fiber, fruits, vegetables, lean_protein, whole_grains]).
diet(obesity, [portion_control, low_sugar, low_fat, high_fiber, lean_protein, fruits, vegetables]).

% Rule: Suggest diet based on disease
suggest_diet(Disease, Diet) :-
    diet(Disease, Diet),
    write('Recommended diet for '), write(Disease), write(' is: '), write(Diet), nl.

% Example queries
% Querying for diet suggestions based on diseases
% ?- suggest_diet(high_blood_pressure, Diet).
% Output: Recommended diet for high_blood_pressure is: [low_salt, high_fiber, fruits, vegetables, lean_protein, whole_grains]

% ?- suggest_diet(diabetes, Diet).
% Output: Recommended diet for diabetes is: [low_sugar, low_carb, high_fiber, lean_protein, vegetables, whole_grains]
