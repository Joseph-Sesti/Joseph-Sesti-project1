class BestSellingGames::Console
  
  attr_accessor :name, :url
  
  def initialize(name, url)
    @name = name
    @url = url
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def list
    scraper.get_list = []
  end
end