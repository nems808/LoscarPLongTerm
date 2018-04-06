%% Credit:
%% https://stackoverflow.com/questions/10364575/normalization-in-variable-range-x-y-in-matlab

function normalized = normalize_var(array, x, y)

     % Normalize to [0, 1]:
     m = min(array);
     range = max(array) - m;
     array = (array - m) / range;

     % Then scale to [x,y]:
     range2 = y - x;
     normalized = (array*range2) + x;