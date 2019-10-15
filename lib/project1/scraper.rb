class Scraper
  
  def get_N64_page
    n64 = Nokogiri::HTML(open("http://www.vgchartz.com/article/260911/top-10-best-selling-nintendo-64-games/"))
  end
  
  def get_PS1_page
    ps1 = Nokogiri::HTML(open("http://www.vgchartz.com/article/260879/top-10-best-selling-playstation-games/"))
  end
  
  def get_GCN_page
    gcn = Nokogiri::HTML(open("http://www.vgchartz.com/article/261265/top-10-best-selling-gamecube-games/"))
  end
  
  def get_PS2_page
    ps2 = Nokogiri::HTML(open("http://www.vgchartz.com/article/261033/top-10-best-selling-playstation-2-games/"))
  end
  
  def get_list
    self.get_N64_page.css("div > p > span > strong").map do |strong|
      strong.text
    end
  end
end  
  # def get_PS1_list
  #   self.get_PS1_page.css("div > p > span > strong").map do |strong|
  #     strong.text
  #   end
  # end
  
  # def get_GCN_list
  #   self.get_GCN_page.css("div > p > span > strong").map do |strong|
  #     strong.text
  #   end
  # end
  
  # def get_PS2_list
  #   self.get_PS2_page.css("div > p > span > strong").map do |strong|
  #     strong.text
  #   end
  # end