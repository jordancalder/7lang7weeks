num = rand(10)

while guess = gets.chomp
    puts "Too high" if guess.to_i > num
    puts "Too low" if guess.to_i < num
    exit if guess.to_i == num
end
