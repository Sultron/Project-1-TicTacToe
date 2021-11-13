function count = win_state(obj)
%WIN_STATE checks mattrix if there is a win
%   arg: class object
for i=1:1:3 %Scan rows  
    sum = obj.board(i, 1) + obj.board(i, 2) + obj.board(i, 3);
    if sum == 3
        count = 1;
        return; % max wins
    elseif sum == -3
        count = -1;
        return; % min wins
    end
end
for i=1:1:3 %Scan columns 
    sum = obj.board(1, i) + obj.board(2, i) + obj.board(3, i);
    if sum == 3
        count = 1; 
        return; % max wins
    elseif sum == -3
        count = -1; 
        return; % min wins 
    end
end
%scan first diagonal 
sum = obj.board(1, 1) + obj.board(2, 2) + obj.board(3, 3);
if sum == 3
    count = 1;
    return; % max wins
elseif sum == -3
    count = -1;
    return; % min wins
end
%scan second diagonal
sum = obj.board(1, 3) + obj.board(2, 2) + obj.board(3, 1);
if sum == 3
    count = 1;
    return; % max wins
elseif sum == -3
    count = -1;
    return; % min wins
end
total = 0;
for i=1:1:3
    for j=1:1:3
        if obj.board(i, j) ~= 0
            total = total + 1;
        end
    end
end
if total == 9
    count = 0; %Draw 
    return;
end
count = 2; %Game still in progress
end







