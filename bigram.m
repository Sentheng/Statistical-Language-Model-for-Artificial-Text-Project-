function matrixWord = bigram(words)
    container = bagOfNgrams(reshape(words,1,[]));
    matrixWord = [cellstr(container.Ngrams) num2cell(container.Counts)'];
end