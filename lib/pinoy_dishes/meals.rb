class PinoyDishes::Meals
  attr_accessor :name, :category, :dish, :instructions, :url #THEANSWER IS RIGHT HERE!!!!
  
  def self.to_cook

   # Should return buch of instances of recipies
  self.scrape_meals
  end
  
  
  def self.scrape_meals
  
    meals = []
    
  meals << self.scrape_adobo
  meals << self.scrape_sinigang
  meals << self.scrape_linaga
  meals << self.scrape_bistek
  meals << self.scrape_kare_kare
  meals << self.scrape_pinakbet
  meals << self.scrape_dinuguan
  meals << self.scrape_bicol_express
  meals << self.scrape_lumpia
  meals << self.scrape_tapsilog
 
   meals
  end
  
  
  def self.scrape_adobo
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/easy-chicken-adobo-recipe/#wprm-recipe-container-71472"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").textpinak
    meal
    
  end
  
  def self.scrape_sinigang
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/pork-sinigang-na-baboy-recipe/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal
  end

def self.scrape_linaga
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/nilagang-litid-ng-baka/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal
  end
  
  def self.scrape_bistek
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/bistek-tagalog-beefsteak-recipe/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal
  end
  
  def self.scrape_kare_kare
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/oxtail-kare-kare-recipe-peanut-stew/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal
  end
  
  def self.scrape_pinakbet
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/pinakbet-tagalog-recipe-knr-sc/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal
  end
  
  def self.scrape_dinuguan
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/dinuguan-blood-stew/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal
  end
  
  def self.scrape_bicol_express
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/pork-bicol-express-recipe/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal
  end
  
  def self.scrape_lumpia
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/chicken-lumpia/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal
  end
  
  def self.scrape_tapsilog
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/tapsilog-recipe/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal
  end
  
end
