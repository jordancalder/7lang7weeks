fib := method(n,
    if (n < 2, 1,
        a := 1
        b := 1
        add := 2
        for(i, 2, n,
            add = a + b
            b = a
            a = add
        )
        add
    )
)

fib(6) println
