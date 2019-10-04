class PinoyDishes::Meals
  attr_accessor :name, :difficulty, :url
  
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
    title = doc.search("h1.firstHeading").text
    #puts "Pick a category of food you wish to learn more about: "
    
    category = self.new
    
    category.main = doc.search("span#Main_dishes.mw-headline").text
    category.soup = doc.search("span#Soups_and_stews.mw-headline").text
    category.noodle = doc.search("span#Noodle_dishes.mw-headline").text
    category.vegetables = doc.search("span#Vegetables.mw-headline").text
    category.rice = doc.search("span#Rice.mw-headline").text
    category.preserved = doc.search("span#Preserved_meat_and_fish.mw-headline").text
    category.pickles = doc.search("span#Pickles_and_side_dishes.mw-headline").text
    category.preserved = doc.search("span#Preserved_meat_and_fish.mw-headline").text
    category.miscellaneous = doc.search("span#Miscellaneous_and_street_food.mw-headline").text
    category.bread = doc.search("span#Bread_and_pastries.mw-headline").text
    category.sweets = doc.search("span#Sweets.mw-headline").text
    category.sauces = doc.search("span#Sauces_and_condiments.mw-headline").text
    category.drinks = doc.search("span#Drinks.mw-headline").text
    category.ingredients = doc.search("span#Ingredients.mw-headline").text

    category


   # binding.pry
  end
end