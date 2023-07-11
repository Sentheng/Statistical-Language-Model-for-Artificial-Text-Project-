function words = extractWords(string) 

string = lower(string); % Makes every string lowercase
words = regexp(string, '[a-z]+', 'match'); %Using regular experesion, it will parse out anything that is not a letter.


end
