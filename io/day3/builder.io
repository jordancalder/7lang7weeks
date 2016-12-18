Builder := Object clone
Builder height := 0
Builder indent := method("  " repeated(height))
Builder forward := method(
    writeln(indent, "<", call message name, ">")
    height = height + 1
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", writeln(indent, content)))
    height = height - 1
    writeln(indent, "</", call message name, ">")
)

Builder div(
            ul(
                li("Io" ),
                li("Lua" ),
                li("JavaScript" )))
