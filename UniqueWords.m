function uniwords = UniqueWords(var)
uniwords = unique(var);
numUnique = numel(uniwords); % Getting the number of elements in the array

disp("Number of Unique Word: ");
disp(numUnique);

end