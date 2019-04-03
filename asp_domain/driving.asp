#include <iclingo>.
#program cumulative(n).


inlane(L2,I) :- changeleft(I-1), inlane(L1,I-1), leftof(L2,L1), I>0, I=n-1. 
:- changeleft(I), inlane(L,I), leftmost(L), I>0, I=n-1. 


-leftmost(L) :- leftof(L1,L). 
leftmost(L) :- not -leftmost(L). 
-rightmost(L) :- leftof(L,L1). 
rightmost(L) :- not -rightmost(L). 


%changeright(L2,I) : lane(L2); 
%forward(I); 
%turnleft(I); 
%turnright(I);
%stop(I)