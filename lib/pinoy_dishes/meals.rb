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
    category_1 = doc.search("span#Main_dishes.mw-headline").text
    category_2 = doc.search("span#Soups_and_stews.mw-headline").text
    category_3 = doc.search("span#Noodle_dishes.mw-headline").text
    category_4 = doc.search("span#Vegetables.mw-headline").text
    category_5 = doc.search("span#Rice.mw-headline").text
    category_6 = doc.search("span#Preserved_meat_and_fish.mw-headline").text
    category_7 = doc.search("span#Pickles_and_side_dishes.mw-headline").text
    category_8 = doc.search("span#Preserved_meat_and_fish.mw-headline").text
    category_9 = doc.search("span#Miscellaneous_and_street_food.mw-headline").text
    category_10 = doc.search("span#Breat_and_pastries.mw-headline").text
    category_11 = doc.search("span#Sweets.mw-headline").text
    category_12 = doc.search("span#Sauces_and_condiments.mw-headline").text
    category_13 = doc.search("span#Drinks.mw-headline").text
    category_14 = doc.search("span#Ingredients.mw-headline").text




   # binding.pry
  end
end