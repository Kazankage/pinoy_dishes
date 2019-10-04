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
    category_1 = doc.css("span#Main_dishes.mw-headline").text
    category_2 = doc.css("span#Soups_and_stews.mw-headline").text
    category_3 = doc.css("span#Noodle_dishes.mw-headline").text
    category_4 = doc.css("span#Vegetables.mw-headline").text
    category_5 = doc.css("span#Rice.mw-headline").text
    category_6 = doc.css("span#Preserved_meat_and_fish.mw-headline").text
    category_7 = doc.css("span#Pickles_and_side_dishes.mw-headline").text
    category_8 = doc.css("span#Preserved_meat_and_fish.mw-headline").text
    category_9 = doc.css("span#Miscellaneous_and_street_food.mw-headline").text
    category_10 = doc.css("span#Breat_and_pastries.mw-headline").text
    category_11 = doc.css("span#Sweets.mw-headline").
    category_12 = doc.css("span#Sauces_and_condiments.mw-headline").text
    category_13 = doc.css("span#Drinks.mw-headline").text
    category_14 = doc.css("span#Ingredients.mw-headline").text




    binding.pry
  end
end