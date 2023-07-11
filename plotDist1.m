function plotDist1(var, totalWords)

UniqueWord = var(:, 1);
occurrences = cell2mat(var(:, 2));
wordProbabilities = occurrences / totalWords; % calculate the probability of each word
[sortedProbabilities, idx] = sort(wordProbabilities, 'descend'); % sort the probabilities in descending order
sortedUniqueWords = UniqueWord(idx); % sort the unique words using the same order as the sorted probabilities

cumulativeProbabilities = cumsum(sortedProbabilities); % calculate the cumulative sum of probabilities

plot(1:numel(sortedUniqueWords), cumulativeProbabilities);
ylim([0 1])
xlim([0 8000])
xlabel('Number of Words');
ylabel('Percentage of Book');

end
