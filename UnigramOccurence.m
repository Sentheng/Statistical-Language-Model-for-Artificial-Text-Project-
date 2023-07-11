function uni = UnigramOccurence(word)

container = bagOfNgrams(word, 'NgramLengths',1);
uni = [cellstr(container.Vocabulary)' num2cell(container.Counts)'];

end