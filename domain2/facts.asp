%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%  Domain Knowledge                                             %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Roads
road(0..2).
%% Lanes
lane(-1).
lane(1..48).
%% Shops
shop(0..4).

%% Lane change rules
leftof(2,1).
leftof(3,4).
leftof(7,8).
leftof(6,5).
leftof(11,12).
leftof(10,9).
leftof(15,16).
leftof(14,13).
leftof(23,24).
leftof(22,21).
leftof(18,17).
leftof(19,20).
leftof(39,40).
leftof(38,37).
leftof(27,28).
leftof(26,25).
leftof(31,32).
leftof(30,29).
leftof(34,33).
leftof(35,36).
leftof(43,44).
leftof(42,41).
leftof(47,48).
leftof(46,45).

%% right turn rules
rturn(28,12).
rturn(8,20).
rturn(33,13).
rturn(45,21).
rturn(4,8).
rturn(3,7).
rturn(43,34).
rturn(44,33).
rturn(30,46).
rturn(29,45).
rturn(38,27).
rturn(37,28).
rturn(12,24).
rturn(9,4).
rturn(16,29).
rturn(13,17).
rturn(20,9).
rturn(17,44).
rturn(24,37).
rturn(21,16).

%% left turn rules
lturn(2,11).
lturn(42,19).
lturn(31,14).
lturn(39,22).
lturn(6,2).
lturn(5,1).
lturn(36,41).
lturn(35,42).
lturn(47,31).
lturn(48,32).
lturn(26,39).
lturn(25,40).
lturn(11,18).
lturn(10,26).
lturn(15,35).
lturn(14,23).
lturn(19,15).
lturn(18,6).
lturn(23,47).
lturn(22,10).


%% drive straight through an intersection rules
passsignal(1,25).
passsignal(27,3).
passsignal(41,5).
passsignal(7,43).
passsignal(34,30).
passsignal(32,36).
passsignal(40,48).
passsignal(46,38).
passsignal(11,15).
passsignal(14,10).
passsignal(19,23).
passsignal(22,18).



%% through(0, 7) is read as shop 0 is reachable through lane 7
through(0,1).
through(1,37).
through(2,44).
through(3,36).
through(4,48).
