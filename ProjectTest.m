close all
clc
clear

%This file is used to test all the function and their capabilities to generate the artifical text

%#1 Testing function of reading the text
text = readFile('MobyDick.txt'); 

disp("Done with Function #1");
%#2 Testing the function of extracting the words
word = extractWords(text); 
disp("Done with Function #2");

%#3 Testing the function of counting the amount of words
countWords = counting(word); 
disp("Done with Function #3");

%#4a Testing the function of counting the amount of unique words.
uniwords = UniqueWords(word);  
disp("Done with Function #4");

%#5  Testing the function of counting the amount of unique words under a min count
 numUniqueMinLength = UniqueWordsMinLen(word, 5);
 disp("Done with Function #5");

%#6 Testing the function of getting the number of occurences of each word 
uni = UnigramOccurence(word);
disp("Done with Function #6");


%#7 Testing the function creating a matrix of getting the bigram
matrixWord = bigram(word);
disp("Done with Function #7");


%#8 Testing the function that generates text based on the proability of the words, using previous word as prior information
next = NextText('as', matrixWord);
disp("Done with Function #8");

%#9 Testing functions to improve automatic text generation, by adding constraints
next1 = NextText1('as', matrixWord);
disp("Done with Function #9");

%# 10 Testing function to plot distribution of unqiue words
plotDist(uni);
disp("Done with Function #10");

%# 10 (part 2) Testing function to plot distriubtion of how many words for
%certain percent of the until book
%plotDist1(uni, countWords); % Both graph can not be shown at the same
%time. need to comment out the this function so that user can use the
%plotDist(uni) function
disp("Done with Function #10 (part 2)");
