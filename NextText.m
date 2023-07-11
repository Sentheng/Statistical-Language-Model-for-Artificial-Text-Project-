function next = NextText(inputText,gram)

[row,~] = find(string(gram(:,1)) == inputText);
poten = string(); %Initialization
stat = zeros();
for j = 1:size(row,1)
    stat(j)= cell2mat(gram(row(j),3)); % This is the probablity
    poten(j)= gram(row(j),2);
end
count = sum(stat); % This is the sum
for j =1:size(stat,1);
    stat(j) = stat(j)/count; % Taking the probablity and dividing by the sum
end
if size(stat,1) > 0
    next = randsample(poten,1,true, stat); return % Returning one with the probablity

end 

next = string(gram(randi(size(gram,1)),2));





end