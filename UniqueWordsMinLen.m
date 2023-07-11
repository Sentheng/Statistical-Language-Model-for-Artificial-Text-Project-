function uniqueWordMinLength = UniqueWordsMinLen(var, wordLength )
 

 uniword = unique(var);
 uniqueWordMinLength = sum(cellfun(@(x) length(x)>= wordLength, uniword));

 disp("Minimum Word Length: ");
 disp(wordLength);
 disp("Amount of unique words with the minimum length")
 disp(uniqueWordMinLength);



end