smallest([X], X).
smallest([Head|Tail], X) :- smallest(Tail, Min), X is min(Head, Min).

% min_list([1,2,3], X).
