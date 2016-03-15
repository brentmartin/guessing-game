def create_vars
  @range = []
  @win = false
  @guesscount = 0
  @guessprev = []
end

def populate_num
  (1..100).each do |n|
    @range.push(n)
  end
end

def pick_num
  @number = @range.sample
  @range.delete(@number)
end

def guess_num
  puts "What number would you like to guess?"
  print "> "
  @guess = gets.chomp
  @guesscount += 1
end

# @board.include?(n)
# @player1.push(n)
# @board.delete(n)

def check_guess
  def already_guessed(n)
    if @guessprev.include?(n)
      "Dude, you already guess this - stop smoking."
    else
      @guessprev.push(n)
    end
  end
  def hit_miss
    if @guess.to_i == @number.to_i
      @win = true
      puts "You Win!"
      puts "It took you #{@guesscount} guesses."
    else
      puts "Whiffed! You've guessed #{@guesscount} times."
    end
  end
  def high_low
    if @guess.to_i > @number.to_i
      puts "You guessed high, try lower."
    elsif @guess.to_i < @number.to_i
      puts "You guessed low, try higher."
    end
  end
  already_guessed(@guess)
  hit_miss
  high_low
end

def guess_again
  while @guesscount <= 5
  # pick_num
  guess_num
  system("clear")
  check_guess
  test_area
  end
  puts "Too many guesses, you loose!"
end

###########################################
### TESTING TESTING #######################
def test_area                      ########
  def pre_test_content             ########
    puts                           ########
    puts "*" * 60                  ########
    print                          ########
    print "*******!!test area!!"   ########
    puts "*" * 40                  ########
    puts                           ########
  end                              ########
  def post_test_content            ########
    puts                           ########
    puts "*" * 60                  ########
  end                              ########
  pre_test_content                 ########
  puts "number is: #{@number}"     ########
  puts "guess is: #{@guess}"       ########
  puts "guesscount: #{@guesscount}"########
  puts "guesses: #{@guessprev}"    ########
  puts                             ########
  print "range: #{@range}"         ########
  post_test_content                ########
end                                ########
###########################################
###########################################

create_vars
populate_num
pick_num
guess_num
system("clear")
check_guess
# test_area
guess_again
