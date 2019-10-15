class Scraper
  
  def get_N64_list
    n64 = Nokogiri::HTML(open("http://www.vgchartz.com/article/260911/top-10-best-selling-nintendo-64-games/"))
    n64.css("div > p > span > strong").map do |strong|
      strong.text
    end
  end
  
  def get_PS1_list
    ps1 = Nokogiri::HTML(open("http://www.vgchartz.com/article/260879/top-10-best-selling-playstation-games/"))
    ps1.css("div > p > span > strong").map do |strong|
      strong.text
    end
  end
  
  def get_GCN_list
    gcn = Nokogiri::HTML(open("http://www.vgchartz.com/article/261265/top-10-best-selling-gamecube-games/"))
    gcn.css("div > p > span > strong").map do |strong|
      strong.text
    end
  end
  
  def get_PS2_list
    ps2 = Nokogiri::HTML(open("http://www.vgchartz.com/article/261033/top-10-best-selling-playstation-2-games/"))
    ps2.css("div > p > span > strong").map do |strong|
      strong.text
    end
  end
end