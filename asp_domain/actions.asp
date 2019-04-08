step(0..n).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%  The agent should continue between each action					  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

continue(I+1) :- changeleft(I).
continue(I+1) :- changeright(I).
continue(I+1) :- forward(I).
continue(I+1) :- turnleft(I).
continue(I+1) :- turnright(I).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%  At each step, chose at least one and at most one action  %%%%%
%%%%%  When no action is suitable, chose 'continue'             %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

1{
	changeleft(I);
	changeright(I);
	forward(I);
	turnleft(I);
	turnright(I);
	stop(I)
}1 :- not continue(I), step(I), I>=0, I<n.

continue(I) :- not changeleft(I), not changeright(I), not forward(I),
not turnleft(I), not turnright(I), not stop(I), step(I), I>=0, I<n.


#show changeleft/1.
#show changeright/1.
#show forward/1.
#show turnleft/1.
#show turnright/1.
#show inlane/2.
#show continue/1.
#show stop/1.
