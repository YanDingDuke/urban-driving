%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%  Following are rules for actions                                           %%%%%
%%%%%  Line 1 of each rule shifts agent from start lane to result lane           %%%%%
%%%%%  Line 2 of each rule makes agent leave its start lane after taking action  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 1) Change lane to the left
inlane(L2,I+1) :- changeleft(I), inlane(L1,I), leftof(L2,L1), step(I), I>=0, I<n.
-inlane(L,I+1) :- changeleft(I), inlane(L,I), lane(L), step(I), I>=0, I<n.

%% 2) Change lane to the right
inlane(L2,I+1) :- changeright(I), inlane(L1,I), leftof(L1,L2), step(I), I>=0, I<n.
-inlane(L,I+1) :- changeright(I), inlane(L,I), lane(L), step(I), I>=0, I<n.

%% 3) Take a left turn
inlane(L2,I+1) :- turnleft(I), inlane(L1,I), lturn(L1,L2), step(I), I>=0, I<n.
-inlane(L,I+1) :- turnleft(I), inlane(L,I), lane(L), step(I), I>=0, I<n.

%% 4) Take a right turn
inlane(L2,I+1) :- turnright(I), inlane(L1,I), rturn(L1,L2), step(I), I>=0, I<n.
-inlane(L,I+1) :- turnright(I), inlane(L,I), lane(L), step(I), I>=0, I<n.

%% 5) Drive forward
inlane(L2,I+1) :- forward(I), inlane(L1,I), passsignal(L1,L2), step(I), I>=0, I<n.
-inlane(L,I+1) :- forward(I), inlane(L,I), lane(L), step(I), I>=0, I<n.

%% 6) Park
inlane(-1,I+1) :- park(I), inlane(L,I), lane(L), step(I), through(S,L), shop(S), I>=0, I<n.
-inlane(L,I+1) :- park(I), inlane(L,I), lane(L), step(I), I>=0, I<n.
parkedat(S,I+1) :- park(I), inlane(L,I), lane(L), through(S,L), shop(S), step(I), I>=0, I<n.

%% 7) Unpark
inlane(L,I+1) :- unpark(I), inlane(-1,I), through(S,L), lane(L), shop(S), parkedat(S,I), step(I), I>=0, I<n.
-inlane(-1,I+1) :- unpark(I), step(I), I>=0, I<n.
-parkedat(S,I+1) :-unpark(I), parkedat(S,I), shop(S), step(I), I>=0, I<n.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%  Inertial rule                                                             %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
inlane(L, I) :- inlane(L, I-1), not -inlane(L, I), lane(L), I>0, I<=n.
-inlane(L, I) :- -inlane(L, I-1), not inlane(L, I), lane(L), I>0, I<=n.
