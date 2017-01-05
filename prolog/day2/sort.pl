j_sort(List,Sorted) :- compare_sort(List,[],Sorted).

compare_sort([],Empty,Empty).
compare_sort([Head|Tail],Temp,Sorted) :- list_insert(Head,Temp,Temp2), acc_sort(Tail,Temp2,Sorted).

list_insert(X,[],[X]).
list_insert(X,[Y|Tail],[Y|NextTail]) :- X >= Y, list_insert(X, Tail, NextTail).
list_insert(X,[Y|Tail],[X,Y|Tail]) :- X < Y.
