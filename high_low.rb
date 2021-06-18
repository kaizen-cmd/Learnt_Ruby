# Design High Low
ACTUAL_NUMBER = 10
ALLOWED_GUESSES = 5

number_guessed = false

guess_count = 0

while guess_count < ALLOWED_GUESSES

    guess_count += 1

    print "Guess the number: "

    number = gets.chomp().to_i

    if number == ACTUAL_NUMBER

        puts "Number guessed"

        number_guessed = true
        
        break
    
    else

        puts "Wrong number try again. " + (ALLOWED_GUESSES - guess_count).to_s + " tries left."
    
    end

end
    
if !number_guessed

    puts "You ran out of tries"

end