Person := Object clone do (
    age ::= nil
    hair_color ::= nil
    race ::= nil
)

boy := Person clone
boy setAge(20)
boy setHair_color("brown")
boy setRace("caucasian")

girl := Person clone
girl setAge(31)
girl setHair_color("black")
girl setRace("asian")

boy println
girl println
