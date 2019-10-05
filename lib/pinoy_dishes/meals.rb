class PinoyDishes::Meals
  attr_accessor :name, :category, :dish, :instructions, :ingredients, :url 
  
=begin  def self.to_cook #Lets try this.. Hmm. 

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
=end  
  
  def self.scrape_adobo
    meal = []
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/easy-chicken-adobo-recipe/#wprm-recipe-container-71472"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal.instructions = [doc.search("#wprm-recipe-71472-step-0-0").text, doc.search("#wprm-recipe-71472-step-0-1").text, doc.search("#wprm-recipe-71472-step-0-2").text, doc.search("#wprm-recipe-71472-step-0-3").text, doc.search("#wprm-recipe-71472-step-0-4").text, doc.search("#wprm-recipe-71472-step-0-5").text]
    meal
    
  end
  
  def self.scrape_sinigang
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/pork-sinigang-na-baboy-recipe/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal.instructions = [doc.search("#wprm-recipe-45253-step-0-0").text, doc.search("#wprm-recipe-45253-step-0-1").text, doc.search("#wprm-recipe-45253-step-0-2").text, doc.search("#wprm-recipe-45253-step-0-3").text, doc.search("#wprm-recipe-45253-step-0-4").text, doc.search("#wprm-recipe-45253-step-0-5").text, doc.search("#wprm-recipe-45253-step-0-6").text, doc.search("#wprm-recipe-45253-step-0-7").text, doc.search("#wprm-recipe-45253-step-0-8").text, doc.search("#wprm-recipe-45253-step-0-9").text]
    meal
  end

def self.scrape_linaga
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/nilagang-litid-ng-baka/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal.instructions = [doc.search("#wprm-recipe-48498-step-0-0").text, doc.search("#wprm-recipe-48498-step-0-1").text, doc.search("#wprm-recipe-48498-step-0-2").text, doc.search("#wprm-recipe-48498-step-0-3").text, doc.search("#wprm-recipe-45253-step-0-4").text, doc.search("#wprm-recipe-48498-step-0-5").text, doc.search("#wprm-recipe-48498-step-0-6").text]
    meal
  end
  
  def self.scrape_bistek
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/bistek-tagalog-beefsteak-recipe/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal.instructions = [doc.search("#wprm-recipe-47275-step-0-0").text, doc.search("#wprm-recipe-47275-step-0-1").text, doc.search("#wprm-recipe-47275-step-0-2").text, doc.search("#wprm-recipe-47275-step-0-3").text, doc.search("#wprm-recipe-47275-step-0-4").text, doc.search("#wprm-recipe-47275-step-0-5").text, doc.search("#wprm-recipe-47275-step-0-6").text, doc.search("#wprm-recipe-47275-step-0-7").text]
    meal
  end
  
  def self.scrape_kare_kare
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/oxtail-kare-kare-recipe-peanut-stew/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal.instructions = [doc.search("#wprm-recipe-47800-step-0-0").text, 
    doc.search("#wprm-recipe-47800-step-0-1").text, doc.search("#wprm-recipe-47800-step-0-2").text, doc.search("#wprm-recipe-47800-step-0-3").text, doc.search("#wprm-recipe-47800-step-0-4").text, doc.search("#wprm-recipe-47800-step-0-5").text, doc.search("#wprm-recipe-47800-step-0-6").text, doc.search("#wprm-recipe-47800-step-0-7").text, doc.search("#wprm-recipe-47800-step-0-8").text, doc.search("#wprm-recipe-47800-step-0-9").text, doc.search("#wprm-recipe-47800-step-1-0").text, doc.search("#wprm-recipe-47800-step-1-1").text, doc.search("#wprm-recipe-47800-step-1-2").text]
    meal
  end
  
  def self.scrape_pinakbet
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/pinakbet-tagalog-recipe-knr-sc/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal.instructions = [doc.search("#wprm-recipe-51921-step-0-0").text, 
    doc.search("#wprm-recipe-51921-step-0-1").text, doc.search("#wprm-recipe-51921-step-0-2").text, doc.search("#wprm-recipe-51921-step-0-3").text, doc.search("#wprm-recipe-51921-step-0-4").text, doc.search("#wprm-recipe-51921-step-0-5").text, doc.search("#wprm-recipe-51921-step-0-6").text, doc.search("#wprm-recipe-51921-step-0-7").text, doc.search("#wprm-recipe-47800-step-0-8").text]
    meal
  end
  
  def self.scrape_dinuguan
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/dinuguan-blood-stew/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal.instructions = [doc.search("#wprm-recipe-47397-step-0-0").text, 
    doc.search("#wprm-recipe-47397-step-0-1").text, doc.search("#wprm-recipe-47397-step-0-2").text, doc.search("#wprm-recipe-47397-step-0-3").text, doc.search("#wprm-recipe-47397-step-0-4").text, doc.search("#wprm-recipe-47397-step-0-5").text, doc.search("#wprm-recipe-47397-step-0-6").text]
    meal
  end
  
  def self.scrape_bicol_express
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/pork-bicol-express-recipe/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
      meal.instructions = [doc.search("#wprm-recipe-48050-step-0-0").text, 
    doc.search("#wprm-recipe-48050-step-0-1").text, doc.search("#wprm-recipe-48050-step-0-2").text, doc.search("#wprm-recipe-48050-step-0-3").text, doc.search("#wprm-recipe-48050-step-0-4").text, doc.search("#wprm-recipe-48050-step-0-5").text, doc.search("#wprm-recipe-48050-step-0-6").text, doc.search("#wprm-recipe-48050-step-0-7").text, doc.search("#wprm-recipe-48050-step-0-8").text]
    meal
  end
  
  def self.scrape_lumpia
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/chicken-lumpia/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
    meal.instructions = [doc.search("#wprm-recipe-71005-step-0-0").text, 
    doc.search("#wprm-recipe-71005-step-0-1").text, doc.search("#wprm-recipe-71005-step-0-2").text, doc.search("#wprm-recipe-71005-step-0-3").text, doc.search("#wprm-recipe-71005-step-0-4").text, doc.search("#wprm-recipe-71005-step-0-5").text]
    meal
  end
  
  def self.scrape_tapsilog
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/tapsilog-recipe/"))
    
    meal = self.new
    meal.name = doc.search("h1.entry-title").text
     meal.instructions = [doc.search("#wprm-recipe-70557-step-0-0").text, 
    doc.search("#wprm-recipe-70557-step-0-1").text, doc.search("#wprm-recipe-70557-step-0-2").text, doc.search("#wprm-recipe-70557-step-0-3").text, doc.search("#wprm-recipe-70557-step-0-4").text, doc.search("#wprm-recipe-70557-step-0-5").text]
    meal
  end
  
end
