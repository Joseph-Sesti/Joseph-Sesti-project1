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
  
  def list_games(console)
    Consoles.each do |console, url|
      if input = console
        puts "#{url}"
      end
    end
  end
  
  def list_N64_games
    n64_list = scraper.get_N64_list
    puts n64_list
  end
  
  def list_PS1_games
    ps1_list = scraper.get_PS1_list
    puts ps1_list
  end
  
  def list_GCN_games
    gcn_list = scraper.get_GCN_list
    puts gcn_list
  end
  
  def list_PS2_games
    ps2_list = scraper.get_PS2_list
    puts ps2_list
  end
end