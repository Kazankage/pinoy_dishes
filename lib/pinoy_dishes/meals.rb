class PinoyDishes::Meals
  attr_accessor :name, :category, :dish, :instructions, :ingredients, :url 
  
def self.to_cook #Lets try this.. Hmm. 

  self.scrape_meals
  end
  
  
  def self.scrape_meals
  
    meals = []
    
  meals << self.scrape_adobo
  meals << self.scrape_sinigang
  meals << self.scrape_nilaga
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
    meal = []
   
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/easy-chicken-adobo-recipe/#wprm-recipe-container-71472"))
     get_name = doc.search("h1.entry-title").text
    meal = self.new
    meal.name = get_name
    meal.instructions = [doc.search("#wprm-recipe-71472-step-0-0").text, doc.search("#wprm-recipe-71472-step-0-1").text, doc.search("#wprm-recipe-71472-step-0-2").text, doc.search("#wprm-recipe-71472-step-0-3").text, doc.search("#wprm-recipe-71472-step-0-4").text, doc.search("#wprm-recipe-71472-step-0-5").text]
    
    meal
    
  end
  
  def self.scrape_sinigang
     meal = []
    
     
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/pork-sinigang-na-baboy-recipe/"))
    get_name = doc.search("h1.entry-title").text
    meal = self.new
    meal.name = get_name
    meal.instructions = [doc.search("#wprm-recipe-45253-step-0-0").text, doc.search("#wprm-recipe-45253-step-0-1").text, doc.search("#wprm-recipe-45253-step-0-2").text, doc.search("#wprm-recipe-45253-step-0-3").text, doc.search("#wprm-recipe-45253-step-0-4").text, doc.search("#wprm-recipe-45253-step-0-5").text, doc.search("#wprm-recipe-45253-step-0-6").text, doc.search("#wprm-recipe-45253-step-0-7").text, doc.search("#wprm-recipe-45253-step-0-8").text, doc.search("#wprm-recipe-45253-step-0-9").text]
    meal
  end

def self.scrape_nilaga
    meal = []
   
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/nilagang-litid-ng-baka/"))
     get_name = doc.search("h1.entry-title").text
    meal = self.new
    meal.name = get_name
    meal.instructions = [doc.search("#wprm-recipe-48498-step-0-0").text, doc.search("#wprm-recipe-48498-step-0-1").text, doc.search("#wprm-recipe-48498-step-0-2").text, doc.search("#wprm-recipe-48498-step-0-3").text, doc.search("#wprm-recipe-45253-step-0-4").text, doc.search("#wprm-recipe-48498-step-0-5").text, doc.search("#wprm-recipe-48498-step-0-6").text]
    meal
  end
  
  def self.scrape_bistek
    meal = []
    
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/bistek-tagalog-beefsteak-recipe/"))
     get_name = doc.search("h1.entry-title").text
    meal = self.new
    meal.name = get_name
    meal.instructions = [doc.search("#wprm-recipe-47275-step-0-0").text, doc.search("#wprm-recipe-47275-step-0-1").text, doc.search("#wprm-recipe-47275-step-0-2").text, doc.search("#wprm-recipe-47275-step-0-3").text, doc.search("#wprm-recipe-47275-step-0-4").text, doc.search("#wprm-recipe-47275-step-0-5").text, doc.search("#wprm-recipe-47275-step-0-6").text, doc.search("#wprm-recipe-47275-step-0-7").text]
    meal
  end
  
  def self.scrape_kare_kare
    meal = []
 
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/oxtail-kare-kare-recipe-peanut-stew/"))
     get_name = doc.search("h1.entry-title").text
    meal = self.new
    meal.name = get_name
    meal.instructions = [doc.search("#wprm-recipe-47800-step-0-0").text, 
    doc.search("#wprm-recipe-47800-step-0-1").text, doc.search("#wprm-recipe-47800-step-0-2").text, doc.search("#wprm-recipe-47800-step-0-3").text, doc.search("#wprm-recipe-47800-step-0-4").text, doc.search("#wprm-recipe-47800-step-0-5").text, doc.search("#wprm-recipe-47800-step-0-6").text, doc.search("#wprm-recipe-47800-step-0-7").text, doc.search("#wprm-recipe-47800-step-0-8").text, doc.search("#wprm-recipe-47800-step-0-9").text, doc.search("#wprm-recipe-47800-step-1-0").text, doc.search("#wprm-recipe-47800-step-1-1").text, doc.search("#wprm-recipe-47800-step-1-2").text]
    meal
  end
  
  def self.scrape_pinakbet
    meal = []
   
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/pinakbet-tagalog-recipe-knr-sc/"))
     get_name = doc.search("h1.entry-title").text
    meal = self.new
    meal.name = get_name
    meal.instructions = [doc.search("#wprm-recipe-51921-step-0-0").text, 
    doc.search("#wprm-recipe-51921-step-0-1").text, doc.search("#wprm-recipe-51921-step-0-2").text, doc.search("#wprm-recipe-51921-step-0-3").text, doc.search("#wprm-recipe-51921-step-0-4").text, doc.search("#wprm-recipe-51921-step-0-5").text, doc.search("#wprm-recipe-51921-step-0-6").text, doc.search("#wprm-recipe-51921-step-0-7").text, doc.search("#wprm-recipe-47800-step-0-8").text]
    meal
  end
  
  def self.scrape_dinuguan
    meal = []
   
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/dinuguan-blood-stew/"))
     get_name = doc.search("h1.entry-title").text
    meal = self.new
    meal.name = get_name
    meal.instructions = [doc.search("#wprm-recipe-47397-step-0-0").text, 
    doc.search("#wprm-recipe-47397-step-0-1").text, doc.search("#wprm-recipe-47397-step-0-2").text, doc.search("#wprm-recipe-47397-step-0-3").text, doc.search("#wprm-recipe-47397-step-0-4").text, doc.search("#wprm-recipe-47397-step-0-5").text, doc.search("#wprm-recipe-47397-step-0-6").text]
    meal
  end
  
  def self.scrape_bicol_express
    meal = []
   
    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/pork-bicol-express-recipe/"))
    get_name = doc.search("h1.entry-title").text
    meal = self.new
    meal.name = get_name
      meal.instructions = [doc.search("#wprm-recipe-48050-step-0-0").text, 
    doc.search("#wprm-recipe-48050-step-0-1").text, doc.search("#wprm-recipe-48050-step-0-2").text, doc.search("#wprm-recipe-48050-step-0-3").text, doc.search("#wprm-recipe-48050-step-0-4").text, doc.search("#wprm-recipe-48050-step-0-5").text, doc.search("#wprm-recipe-48050-step-0-6").text, doc.search("#wprm-recipe-48050-step-0-7").text, doc.search("#wprm-recipe-48050-step-0-8").text]
    meal
  end
  
  def self.scrape_lumpia
    meal = []

    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/chicken-lumpia/"))
     get_name = doc.search("h1.entry-title").text
    meal = self.new
    meal.name = get_name
    meal.instructions = [doc.search("#wprm-recipe-71005-step-0-0").text, 
    doc.search("#wprm-recipe-71005-step-0-1").text, doc.search("#wprm-recipe-71005-step-0-2").text, doc.search("#wprm-recipe-71005-step-0-3").text, doc.search("#wprm-recipe-71005-step-0-4").text, doc.search("#wprm-recipe-71005-step-0-5").text]
    meal
  end
  
  def self.scrape_tapsilog
    meal = []

    doc = Nokogiri::HTML(open("https://panlasangpinoy.com/tapsilog-recipe/"))
     get_name = doc.search("h1.entry-title").text
    meal = self.new
    meal.name = get_name
     meal.instructions = [doc.search("#wprm-recipe-70557-step-0-0").text, 
    doc.search("#wprm-recipe-70557-step-0-1").text, doc.search("#wprm-recipe-70557-step-0-2").text, doc.search("#wprm-recipe-70557-step-0-3").text, doc.search("#wprm-recipe-70557-step-0-4").text, doc.search("#wprm-recipe-70557-step-0-5").text]
    meal
  end
  
end
