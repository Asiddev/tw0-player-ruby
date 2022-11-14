class Player
  attr_accessor :name, :lives
  def initialize name, lives
    @name = name
    @lives = lives
  end

  # def update_lives 
  #   @lives -= 1
  # end
end