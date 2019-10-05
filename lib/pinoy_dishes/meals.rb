class PinoyDishes::Meals
  attr_accessor :name, :category, :dish, :description, :url #THEANSWER IS RIGHT HERE!!!!
  
  def self.to_cook

   # Should return buch of instances of recipies
  self.scrape_meals
  end
  
  
  def self.scrape_meals
  
    meals = []
    
  meals << self.scrape_dishes
   
   meals
  end
  
  
  def self.scrape_dishes
    
    doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_Philippine_dishes"))
    
    meal = self.new
    #meal.name = doc.search("h1.firstHeading").text
    meal.category = doc.search("span#Main_dishes.mw-headline").text
    meal
  end
  
  
  
  
  
=begin    meal.category = doc.search("span#Soups_and_stews.mw-headline").text
    meal.category = doc.search("span#Noodle_dishes.mw-headline").text
    meal.category = doc.search("span#Vegetables.mw-headline").text
    meal.category = doc.search("span#Rice.mw-headline").text
    meal.category = doc.search("span#Preserved_meat_and_fish.mw-headline").text
    meal.category = doc.search("span#Pickles_and_side_dishes.mw-headline").text
    meal.category = doc.search("span#Miscellaneous_and_street_food.mw-headline").text
    meal.category = doc.search("span#Bread_and_pastries.mw-headline").text
    meal.category = doc.search("span#Sweets.mw-headline").text
    meal.category = doc.search("span#Sauces_and_condiments.mw-headline").text
    meal.category = doc.search("span#Drinks.mw-headline").text
    meal.category = doc.search("span#Ingredients.mw-headline").text


    meal 

   #binding.pry
  end
=end
end
