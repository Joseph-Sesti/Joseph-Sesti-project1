class BestSellingGames::Game
  attr_accessor :title, :console
  
  def initialize(title, console)
    @title = title
    @console = console
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all.clear
  end
end