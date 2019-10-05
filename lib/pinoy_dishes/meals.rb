class PinoyDishes::Meals
  attr_accessor :name, :difficulty, :url
  
  
  def self.to_cook
   puts "Howdy1"
   # Should return buch of instances of recipies
  self.scrape_meals
  end
  
  
  def self.scrape_meals
    puts "Howdy2"
    meals = []
    
  meals << self.scrape_dishes
   
   
      meals
  end
  
  def self.scrape_dishes
    puts "Howdy3"
    
    doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/List_of_Philippine_dishes"))
    
    meal = self.new
    meal.name = doc.search("h1.firstHeading").text
    meal.name = doc.search("span#Main_dishes.mw-headline").text
    meal.name = doc.search("span#Soups_and_stews.mw-headline").text
    meal.name = doc.search("span#Noodle_dishes.mw-headline").text
    meal.name = doc.search("span#Vegetables.mw-headline").text
    meal.name = doc.search("span#Rice.mw-headline").text
    meal.name = doc.search("span#Preserved_meat_and_fish.mw-headline").text
    meal.name = doc.search("span#Pickles_and_side_dishes.mw-headline").text
    meal.name = doc.search("span#Miscellaneous_and_street_food.mw-headline").text
    meal.name = doc.search("span#Bread_and_pastries.mw-headline").text
    meal.name = doc.search("span#Sweets.mw-headline").text
    meal.name = doc.search("span#Sauces_and_condiments.mw-headline").text
    meal.name = doc.search("span#Drinks.mw-headline").text
    meal.name = doc.search("span#Ingredients.mw-headline").text

    meal


   #binding.pry
  end

end
