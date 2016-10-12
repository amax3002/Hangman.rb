
alphabet = ("a".."z").to_a
do_you_want_to_play = "Yes"
puts ''

while do_you_want_to_play == "Yes"
  word_choice = ["banana","obama","pie","adele","submarine"]
  chosen_word = word_choice.sample
  length_word = chosen_word.length.to_i
  max_number_of_guess = 6
  user_picks = []
  letters_of_word_choice = chosen_word.split("")
  inbetween_array = []
  storing_array = []
  finish = 0

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



def end_game(guesses, answer, guesses_final, finish, word_picked)
  if guesses == answer.join(" ")
    finish += 1
    puts "
_You Win_!!
 0
/|\\   I'm Alive
 |
 /\\ _______
 You Win!"
  elsif guesses_final == 0
    puts "
  HANG
 +---+-
 |   |
 |   0
 |   |\\
 |   /\\
-+----------
  HANG

The word was: #{word_picked}"
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
  max_number_of_guess = inbetween_array = create_fill_out(user_picks,letters_of_word_choice)


  max_number_of_guess -= 1
  puts ''


  finish = end_game(inbetween_array, letters_of_word_choice, max_number_of_guess, finish, chosen_word)
  puts ''
end

puts "Do you want to play again (Yes or No)?"
do_you_want_to_play  = gets.chomp.capitalize
end
puts ''
puts 'Quiter :('
