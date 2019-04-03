#include <iclingo>.
#program cumulative(n).


inlane(L2,I) :- changeleft(I-1), inlane(L1,I-1), leftof(L2,L1), I>0, I=n-1. 





%changeright(L2,I) : lane(L2); 
%forward(I); 
%turnleft(I); 
%turnright(I);
%stop(I)