function next1 = NextText1(inputText,gram) % Using Lidstone

[row,~] = find(string(gram(:,1)) == inputText);
poten = string();
stat = zeros();
constant = 1;

containers = size(row,1); % unique ngram
Ngrams = size(gram,1); % total ngrams
for j = 1:size(row,1)
    var = cell2mat(gram(row(j),3));
    stat(j)=(var+constant)/(Ngrams+(containers+constant));% From Lidstone
    poten(j)= gram(row(j),2);
end
if size(stat,1) > 0
    next1 = randsample(poten,1,true, stat); return

end 

next1 = string(gram(randi(size(gram,1)),2));


end