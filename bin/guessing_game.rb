def create_vars
  @range = []
  @win = false
  @guesscount = 0
  @guessprev = []
end

def pick_num
  (1..100).each do |n|
    @range.push(n)
  end
  @number = @range.sample
end

def guess_num
  puts "What number would you like to guess?"
  print "> "
  @guess = gets.chomp
end

# @board.include?(n)
# @player1.push(n)
# @board.delete(n)

def check_guess
  def already_guessed
    if @guessprev.include?(n)
      "Dude, you already guess this - stop smoking."
    else
      @guessprev.push(n)
    end
  end
  def hit_miss
    if @guess == @number
      @win = true
      puts "You Win!"
    else
      puts "Whiffed!"
    end
  end
  def high_low
    when @guess > @number
      puts "You guessed high, try lower."
    when @guess < @number
      puts "You guessed low, try higher."
  end
  already_guessed(@guess)
  hit_miss
  high_low
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
  post_test_content                ########
end                                ########
###########################################
###########################################

create_vars
pick_num
guess_num

test_area
