function load_board(obj, inputFile)
%LOAD_BOARD opens and reads the file and returns game state as a matrix
%object 
% args: class object, file name 
fileId = fopen(inputFile, 'r');
obj.board = fscanf(fileId, '%d', [3 3])'; %Take the transpose of the matrix to correctly interpret the given state
end

