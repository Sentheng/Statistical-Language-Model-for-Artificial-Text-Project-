function text = readFile(filename)

    fid = fopen(filename, 'rt');
    text = fread(fid, '*char')';
    fclose(fid);

end