function make_move(obj)
%MAKE_MOVE Takes a board state and makes a legal move
%   args: class object
if win_state(obj) ~= 2 
    disp No play left  
    return; % Cannot make any moves as board is completely filled
end
%Determine the move it is 
state = 0;
for i=1:3
    for j=1:3
        state = state + obj.board(i, j);
    end
end

state = -state;

if state == 0
    state = 1;
end


if state == 1
    player = true;
elseif state == -1
    player = false;
end


bestMoveVal = -1000;
bestX = -1;
bestY = -1;


for i=1:3
    for j=1:3
        if obj.board(i, j) == 0
            obj.board(i, j) = state; %AI makes the move
            if win_state(obj) == state % Continue with minimax if there's not a win yet 
                fprintf('player 1 made move: [%d, %d]\n\n', i, j)
                return;
            end
            currentMoveVal = mini_max(obj, player); % Goes to minimizer when the first move is made
            obj.board(i, j) = 0; 

            if currentMoveVal > bestMoveVal
                bestX = i;
                bestY = j;
                bestMoveVal = currentMoveVal;
            end
        end
    end

end
fprintf('player %d made move: [%d,%d]\n', state, bestX, bestY);
    obj.board(bestX, bestY) = state;
end
