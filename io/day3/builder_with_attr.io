OperatorTable addAssignOperator(":", "assigner")
curlyBrackets := method(
    store := Map clone
    call message arguments foreach(arg, store doMessage(arg))
    store
)
Map assigner := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1))
)

Builder := Object clone
Builder height := 0
Builder indent := method("  " repeated(height))
Builder forward := method(
    write(indent, "<", call message name)
    checkArg := doMessage(call message arguments first)
    if(checkArg isKindOf(Map), checkArg foreach(k, v, write(" ",k,"=",v)))
    writeln(">")
    height = height + 1
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", writeln(indent, content)))
    height = height - 1
    writeln(indent, "</", call message name, ">")
)

Builder doFile("builder.txt")
