
word_choice = ["banana","obama","pie","adele","submarine"]
chosen_word = word_choice.sample
length_word = chosen_word.length.to_i
max_number_of_guess = length_word + 5
user_picks = []
letters_of_word_choice = chosen_word.split("")
inbetween_array = []
storing_array = []
finish = 0
puts ''
alphabet = ("a".."z").to_a
puts alphabet

def create_fill_out(guesses, chars)
  masked_characters = []
  chars.each do |element|
    if guesses.include?(element)
      masked_characters << element
    else
      masked_characters << "_"
    end
  end
  return masked_characters.join(" ")
end



def notify_user(picks_made)
  if picks_made.any? == false
    return ":"
  else
    return " (#{picks_made.join(", ")}):"
  end
end



def no_double_guesses(guesses, input, guess_count, valid_input)
  if !valid_input.include?(input)
    puts ''
    puts "Please enter a valid input (a-z)"
    puts ''
    guess_count += 1
  elsif guesses.include?(input) || input == ""
    puts ''
    puts "You already guessed this please use another"
    puts ''
    guess_count += 1
  else
    guesses << input
  end
  return guess_count
end

def end_game(guesses, answer, guesses_final, finish)
  if guesses == answer.join(" ")
    finish += 1
    puts "_____You Win_____!!"
  elsif guesses_final == 0
    puts "You LOSE"
  else
  end
  return finish
end




while max_number_of_guess != 0 && finish != 1
  puts ''
  puts "You have #{max_number_of_guess} guesses left."
  puts "You have already guessed#{notify_user(user_picks)}"
  puts "Please submit another guess:"

  input = gets.chomp
  puts ''
  max_number_of_guess = no_double_guesses(user_picks, input, max_number_of_guess, alphabet)


  puts create_fill_out(user_picks,letters_of_word_choice)
  inbetween_array = create_fill_out(user_picks,letters_of_word_choice)

  max_number_of_guess -= 1
  puts ''


  finish = end_game(inbetween_array, letters_of_word_choice, max_number_of_guess, finish)
  puts ''
end
