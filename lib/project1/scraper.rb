require 'pry'

class BestSellingGames::Scraper
  Consoles = {"N64" => "http://www.vgchartz.com/article/260911/top-10-best-selling-nintendo-64-games/", "PS1" => "http://www.vgchartz.com/article/260879/top-10-best-selling-playstation-games/", "GCN" => "http://www.vgchartz.com/article/261265/top-10-best-selling-gamecube-games/", "PS2" => "http://www.vgchartz.com/article/261033/top-10-best-selling-playstation-2-games/"}
  
  def get_list(console)
    url = Consoles[console]
    list = Nokogiri::HTML(open(url))
    list.css("div > p > span > strong").map do |strong|
      strong.text
    end
  end
  
  def get_N64_list
    get_list("N64")
  end
  
  def get_PS1_list
    get_list("PS1")
  end
  
  def get_GCN_list
    get_list("GCN")
  end
  
  def get_PS2_list
    get_list("PS2")
  end
end