%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%  Convenience facts to store goal and init lanes in one place  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

goal(0).
%initlane(-1).
%initpark(1).

initlane(2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%  stop at <n> if goal achieved at <n>-1                        %%%%%
%%%%%  constraint: stop at <n>                                      %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% stop(n) :- inlane(-1,n), parkedat(G,n), goal(G).
% :- not stop(n).

% :- not parkedat(G,n), goal(G).
:- not inlane(7,n).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%  Initial status of the agent: inlane and parkedat             %%%%%
%%%%%  The agent has to go from a shop near lane 3 on road 0        %%%%%
%%%%%  To a shop near lane 7 on road 2                              %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
inlane(L,0) :- initlane(L).
% parkedat(S,0) :- initpark(S).
