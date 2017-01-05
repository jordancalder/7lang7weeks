reversed([],[]).
reversed(Rev, [Head|Tail]) :- reversed(End,Tail), append(End, [Head], Rev).

% reversed([1,2,3,4,5,6,7,8,9], What).

%%% Also has function reverse/2
