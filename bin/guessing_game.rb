def create_vars
  @range = []
  @win = false
  @guess_count = 0
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

# def check_guess
#   if @guess == @number
#     @win = true
#     puts you win!
#   elsif @guess > @number
#     puts "You guessed high, try lower."
#   elsif @guess < @number
#     puts "You guessed low, try higher."
#   end
# end

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
