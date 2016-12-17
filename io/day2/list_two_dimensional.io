List2 := List clone

List2 dim := method(x, y, List2 clone setSize(y) mapInPlace(_, List clone setSize(x)))
List2 set := method(x, y, value, at(y) atPut(x, value))
List2 get := method(x, y, at(y) at(x))

two_d := List2 clone dim(2, 10)

two_d set(0, 0, 100)

List2 transpose := method(
    transposed := dim(size, at(0) size)
    foreach(y, k, k foreach(x, v, transposed set(y, x, v)))
    transposed
)

List2 write := method(path, File open(path) write(serialized) close)
List2 read := method(path, doFile(path))

two_d write("out.txt")
two_d read("out.txt") println
