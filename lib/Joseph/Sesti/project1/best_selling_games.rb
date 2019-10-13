class BestSellingGames::BestSellingGames
  
  attr_accessor :console, :game
  
  @@all = []
  
  def initialize(console)
    console.each do |game|
      self.send ("#{game}")
    end
    @@all << self
  end
  
  def self.all
    @@all
  end
end