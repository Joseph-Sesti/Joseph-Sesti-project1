require "Joseph/Sesti/project1/version"

class BestSellingGames::CLI
  
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
        list_N64
      when "PS1"
        list_PS1
      when "GCN"
        list_GCN
      when "PS2"
        list_PS2
      end
    end
  end
  
  def list_N64
    
end