#program cumulative(n).

1{
	changeleft(I); 
	changeright(I); 
	forward(I); 
	turnleft(I); 
	turnright(I);
	stop(I)
}1 :- not noop(I), I>0, I=n-1.

noop(I) :- noop(I), I>0, I=n-1.




#show changeleft/1.
#show changeright/1.
#show forward/1.
#show turnleft/1.
#show turnright/1.
#show stop/1.

