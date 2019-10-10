require "Joseph/Sesti/project1/version"

class BestSellingGames::CLI
  
  attr_reader :scraper
  
  def initialize
    @scraper = Scraper.new
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
      when "N64"
        list_N64_games
      when "PS1"
        list_PS1_games
      when "GCN"
        list_GCN_games
      when "PS2"
        list_PS2_games
      end
    end
  end
  
  def list_N64_games
    scraper.get_N64_list.map do |name|
      game = BestSellingGames::BestSellingGames.new
      game.console = "N64"
      game.game = name
      game
    end
  end
  
  def list_PS1_games
    scraper.get_PS1_list.map do |name|
      game = BestSellingGames::BestSellingGames.new
      game.console = "PS1"
      game.game = name
      game
    end
  end
  
  def list_GCN_games
    Scraper.get_GCN_list.map do |name|
      game = BestSellingGames::BestSellingGames.new
      game.console = "GCN"
      game.game = name
      game
  end
  
  def list_PS2_games
    Scraper.get_PS2_list.map do |name|
      game = BestSellingGames::BestSellingGames.new
      game.console = "PS2"
      game.game = name
      game
  end
  
end