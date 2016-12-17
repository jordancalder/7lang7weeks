guesses := 10
stdin := File standardInput
answer := (Random value * 100) floor
guess := nil
difference := 100

"Begin game: Guess a number from 1 - 100." println
while(guesses != 0 and guess = stdin readLine asNumber,
    if(guess == answer, "Correct!" println)
    if(difference < ((guess - answer) abs), "You are getting colder" println, "You are getting warmer" println)
    difference = ((guess - answer) abs)
    guesses = guesses - 1
)
