function plotDist(var)

UniqueWord = var(:, 1);
occurences = var(:, 2);
[sortedOccurrences, idx] = sort(cell2mat(occurences), 'descend'); % sort the occurrences in descending order
sortedUniqueWords = UniqueWord(idx); % sort the unique words 

bar(sortedOccurrences);
xlim([0 50]) % This is the first 50 element: The user can change this as necessary
xlabel('Unique Word');
ylabel('Occurrences');

% Set the x-axis tick labels to the sorted unique words
xticks(1:numel(sortedUniqueWords));
xticklabels(sortedUniqueWords);
xtickangle(90);

end
