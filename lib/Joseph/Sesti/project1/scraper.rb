require "Joseph/Sesti/project1/version"
require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  
  def get_N64_page
    doc = Nokogiri::HTML(open("http://www.vgchartz.com/article/260911/top-10-best-selling-nintendo-64-games/"))
  end
  
  def get_PS1_page
    doc = Nokogiri::HTML(open("http://www.vgchartz.com/article/260879/top-10-best-selling-playstation-games/"))
  end
  
  def get_GCN_page
    doc = Nokogiri::HTML(open("http://www.vgchartz.com/article/261265/top-10-best-selling-gamecube-games/"))
  end
  
  def get_PS2_page
    doc = Nokogiri::HTML(open("http://www.vgchartz.com/article/261033/top-10-best-selling-playstation-2-games/"))
  end
  
  def get_N64_list
    self.get_N64_page.css("div > p > span > strong").text
  end
    
  def get_PS1_list
    self.get_PS1_page.css("div > p > span > strong").text
  end
  
  def get_GCN_list
    self.get_GCN_page.css("div > p > span > strong").text
  end
  
  def get_PS2_list
    self.get_PS2_page.css("div > p > span > strong").text
  end
end