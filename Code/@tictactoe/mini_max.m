function score = mini_max(obj, player)
%MINI_MAX minimax algorithm
%   args: class object, player (bool ai is the maximizer)  
%   returns score
switch(win_state(obj))
    case 0 % Draw
        score = 0;
        return;
    case 1 % AI wins
        score = 1;
        return;
    case -1 % User wins 
        score = -1;
        return
    case 2 % Game still in progress

end

% Go through all possible open spaces if available
if player % AI 
    best = -100; % Max negative value
    for i=1:3
        for j=1:3
            if obj.board(i, j) == 0 % Check element for availability (zero)      
                obj.board(i, j) = player; % Modify element to player value
                val = mini_max(obj, ~player);
                best = max(best, val); % best maximum value option 
                obj.board(i, j) = 0; % undo modification

            end
        end
    end
    score = best;
    return;

end
 
    best = 100; % Min positive value 
    for i=1:3
        for j=1:3
            if obj.board(i, j) == 0 % Check element for availability (zero
                obj.board(i, j) = player; % Modify element to player value
                val = mini_max(obj, ~player);
                best = min(best, val); % Best minimum value option
                obj.board(i, j) = 0; % Undo
            end
        end
    end
    score = best;
    return;

end

