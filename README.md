# urban-driving

Urban-driving applies AI planning techniques to autonomous driving.

## Actions
  - **changeleft(I)** : The agent changes lane to the left
  - **changeright(I)** : The agent changes lane to the right
  - **forward(I)** : The agent crosses an intersection without taking any turns
  - **turnleft(I)** : The agent crosses an intersection by taking a left turn
  - **turnright(I)** : The agent crosses an intersection by taking a right turn
  - **park(I)** : The agent exits a road and parks
  - **unpark(I)** : The agent unparks and enters a road
  - **stop(I)** : The agent stops
  - **continue(I)** : The agent continues to drive in its lane.

## States
  - **inlane(L,I)** : The agent is in the lane L at step I
  - **parkedat(S,I)** : The agent is parked at shop S at step I

## Facts
  - **Step, Lane, Road and Shop** : Real world entities.
  - **leftof(L1,L2)** : Lane L1 is to the left of L2 and lane L2 is to the right of L1 (Commutative)
  - **rturn(L1,L2)** : A right turn from lane L1 will lead to lane L2
  - **lturn(L1,L2)** : A left turn from lane L1 will lead to lane L2
  - **passsignal(L1,L2)** : Crossing an intersection from lane L1 will lead to lane L2
  - **through(S,L)** : Shop S is reachable through lane L

## Domains
### Domain 1
![Domain1](/domain1/domain1.jpg?raw=true "Domain1")
### Domain 2
![Domain1](/domain2/domain2.png?raw=true "Domain2")

## How to run
```sh
$ clingo *.asp domainN/*.asp -c n=10
```
