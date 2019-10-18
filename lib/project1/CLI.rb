require 'pry'

class BestSellingGames::CLI
  
  attr_reader :scraper
  
  def initialize
    @scraper = BestSellingGames::Scraper.new
  end
  
  def call
    input = ""
    
    while input != "exit"
      puts "To see the best selling Nintendo 64 games, enter 'N64'."
      puts "To see the best selling Sony Playstation games, enter 'PS1'."
      puts "To see the best selling Nintendo Gamecube games, enter 'GCN'."
      puts "To see the best selling Sony Playstation 2 games, enter 'PS2'."
      
      input = gets.strip
      case input
      when "N64","PS1","GCN","PS2"
        print_games(input)
      end
    end
  end
  
  def print_games(console)
    list_of_games = scraper.get_list(console)
    puts list_of_games
  end
end