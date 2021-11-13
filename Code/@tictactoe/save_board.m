function save_board(obj)
%SAVE_BOARD saves matrix of the game to a file
%   args: class object
writematrix(obj.board, obj.outputFile, 'Delimiter', 'tab')

end

