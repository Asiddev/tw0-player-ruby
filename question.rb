
class Question
  attr_accessor :turn

  def initialize (turn)
    @turn = turn 
  end



  def start
    random1 = rand(1..20)
    random2 = rand(1..20)
    
    puts "The question is : --> #{random1} + #{random2}?"
    print "Your answer please > "
    userInput = gets.chomp.to_i
    # puts userInput

    if userInput == random1 + random2
      puts "Correct!"
      return true
    else 
      puts "Incorrect!"
      return false
    end
  end
end