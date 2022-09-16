def select_word
    words = ["CHOCOLATE", "GERMANY", "RADIO", "WEBDESIGN"]

    sample_word = words.sample

    #puts sample_word
end

def word_hint
    if @game_word == "CHOCOLATE"
        hint = "A sweet"
    elsif @game_word == "GERMANY"
        hint = "A country"
    elsif @game_word == "RADIO"
        hint = "A device"
    elsif @game_word == "WEBDESIGN"
        hint = "A course"
    end

    #puts hint
end

def instructions
    puts 'Welcome to Hangman. At the beginning of each game a randomly selected word will be chosen,'
    puts "You'll be allowed to guess letters until you miss 8 times. If you solve the word correctly you win."
    puts '---------------------------------------------------------------------------------------------------'
end

def play_game
    puts "\nYou have #{@turns} turns left."
    puts "Your word : #{@players_word}"

    print "Enter letter :"
    letter = gets.chomp()

    if letter.length > 1
        puts "Invalid input"
        play_game
    end

    if @game_word=~/#{letter.upcase}/
        (0..@game_word.length).each do |i|
                if (@game_word[i] == letter.upcase) && (@players_word[i] == "_")
                    @players_word[i] = letter.upcase
                elsif @game_word[i] == letter.upcase
                    puts "Already used letter"
                    play_game
                end
            
        end
        puts @players_word
    else
        @turns -= 1
        @used_letters = "#{letter.upcase},"
    end
    puts "Wrong letters : #{@used_letters}"
end

def game_over?
    (@turns == 0) || (@players_word.eql?(@game_word))
end
    

instructions

@game_word = select_word
@guess_hint = word_hint
@word_length = @game_word.length

@players_word = ""
@used_letters = ""
@turns = 8

#puts @game_word
puts "Word Hint : #{@guess_hint}"


# players word
for i in 0...@word_length
    #@players_word = @players_word << "_"
    @players_word[i] = "_"
end

# play
while !game_over?
    play_game
end


puts "\n\nGame Over !!!"

if @turns > 0 
    puts "You win"
else
    puts "You lose"
end