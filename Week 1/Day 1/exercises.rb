puts "Hello, world."

puts "Hello, Ruby.".index("Ruby.")

(0...10).each{puts "Geoff Hotchkiss"}

(1..10).each{|num| puts "This is sentence number #{num}"}

random_number = rand(10)
puts "Guess a number between 0 and 9 inclusive"
guess = gets.chomp.to_i
while random_number != guess
	puts "Too high!" if guess > random_number
	puts "Too low!" if guess < random_number
	guess = gets.chomp.to_i
end
puts "You guessed right!"