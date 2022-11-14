class Game
  attr_accessor :player1Lives, :player2Lives, :turn

  def initialize
    @turn = 1
    @player1Lives = 3
    @player2Lives = 3
    @current =  @player1Lives
    @round = 1
  end

  def update_subtract_lives(turn)
    if turn == 1
      @player1Lives -= 1
      @turn = 2
    else 
      @player2Lives -= 1
      @turn = 1
    end
    if (@player1Lives == 0 || @player2Lives == 0)
      if (@player1Lives == 0)
      puts "Game done ~~~~ Winner Player 2"
      else 
      puts "Game done ~~~~ Winner Player 1"
      end
      exit(0)
    end
    @round += 1
    start
  end

  def next_turn_correct(turn)
    if turn == 1
      @turn = 2
    else
      @turn = 1
    end
    @round += 1
    start
  end

  def start

    if (@player2Lives <= 0 || @player1Lives <= 0)
      if @current == @player2Lives
      puts "Game over winner player 1 with #{player1Lives} lives left"
      else
        puts "Game over winner player 2 with #{player2Lives} lives left"
      end
      exit(0)
    end

    puts "IT IS ROUND #{@round} PREPARE YOURSELVES!"
    puts "Player 1 with #{@player1Lives}/3 LIVES and player 2 with #{@player2Lives}/3 LIVES"
    question = Question.new(turn).start

    if question === true
     next_turn_correct(turn)
    else
      # puts "incorrect subtract 1 switch turns"
      update_subtract_lives(turn)
    end
  end

end