%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%  Domain Knowledge                                             %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Roads
road(0..2).
%% Lanes
lane(0..11).
%% Shops
shop(0..5).

%% Lane change rules
%% leftof(2,3) is read as lane 2
%% is to the left of lane 3
leftof(2,3).
leftof(1,0).
leftof(10,11).
leftof(9,8).
leftof(6,7).
leftof(5,4).

%% right turn rules
%% rturn(8,7) is read as the agent can
%% take a right turn from lane 8 and will
%% end up in lane 7
rturn(8,7).
rturn(4,0).

%% left turn rules
%% lturn(2,6) is read as the agent can take
%% a left turn from lane 2 and will end up in lane 6
lturn(2,6).
lturn(5,10).

%% drive straight through an intersection rules
%% passsignal(3,11) is read as the agent can drive
%% forward at an intersection and will end up in
%% lane 11 after crossing the intersection
passsignal(3,11).
passsignal(8,0).

%% eastof(Road, Lane)
eastof(0,2).
