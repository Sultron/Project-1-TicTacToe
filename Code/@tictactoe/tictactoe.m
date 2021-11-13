classdef tictactoe < handle
    %TICTACTOE uses minimax search algorithm to make a single legal move based on the input file    
    properties
        board;
        outputFile;
    end
    
    methods
        function obj = tictactoe(inputFile, outputFile)
            %TICTACTOE Construct an instance of this class
            %   Takes two arguments, an input file and output file
            obj.outputFile = outputFile; 
            load_board(obj, inputFile)
            make_move(obj);
            save_board(obj);
        end
        load_board(obj, inputFile)
        make_move(obj)
        score = mini_max(obj, player)
        count = win_state(obj)
        save_board(obj)

    end

end

