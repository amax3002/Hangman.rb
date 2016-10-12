
word_choice = ["banana","obama","pie","adele","submarine"]
chosen_word = word_choice.sample
length_word = chosen_word.length.to_i
max_number_of_guess = length_word + 5
user_picks = []
letters_of_word_choice = chosen_word.split("")
inbetween_array = []
storing_array = []
puts ''


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



def no_double_guesses(guesses, input, guess_count)
    if guesses.include?(input) || input ==""
      puts ''
      puts "You already guessed this please use another"
      puts ''
      guess_count += 1
    else
      guesses << input
    end
  return guess_count
end

def end_game()


while max_number_of_guess != 0
  puts ''
  puts "You have #{max_number_of_guess} guesses left."
  puts "You have already guessed#{notify_user(user_picks)}"
  puts "Please submit another guess:"

  input = gets.chomp

  max_number_of_guess = no_double_guesses(user_picks, input, max_number_of_guess)


  #user_picks << input

  puts create_fill_out(user_picks,letters_of_word_choice)


  max_number_of_guess -= 1
end
#
# #if match(user_pick,letters_of_word_choice)
#
# def inputing_letter(array1,array2,array3)
#   return " _" * length_word if array1.empty?
#   array1.each do |element|
#     if array1.include? element == true then
#       array3 << element
#       puts "ASIUFHKJSHF"
#     else
#       array3 << nil
#     end
#   end
# end
#
# puts '__1__'
# puts inputing_letter(user_pick,letters_of_word_choice,inbetween_array)
# # puts '__2__'
# # puts user_pick.join(", ")
# # puts '__3__'
# # puts letters_of_word_choice.join(", ")
# # puts '__4__'
# # puts inbetween_array.join(", ")
#
# #
# #   puts "
# #   The letters already picked are #{user_pick.join(", ")}
# #   Word is: "
#   puts " _" * length_word
#   puts 'Choose a Letter: '
#
#
#
#
# while i != 8
#   setup_menu()
#   input = gets.chomp
#   user_pick << input
#   i += 1
#   break if input.empty?
# end
