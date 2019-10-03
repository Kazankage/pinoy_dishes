class PinoyDishes::Meals
  attr_accessor :name, :difficulty, :url
  def self.to_cook
    # Should return buch of instances of recipies
  puts <<-DOC.gsub /^\s*/, ''
          1) Adobo
          2) Sinigang
          3) Linaga
          4) Bistek
          5) Kare-Kare
          6) Pinakbet
          7) Diniguan
          8) Pancit
          9) Lumpia
          10) -silog
        DOC
        meal_1 = self.new
        meal_1.name = "Adobo"
        meal_1.difficulty = "easy"
        meal_1.url = "https://panlasangpinoy.com/filipino-food-pork-adobo-recipe/"
        
        meal_2 = self.new
        meal_2.name = "Sinigang"
        meal_2.difficulty = "easy"
        meal_2.url = "https://panlasangpinoy.com/pork-sinigang-na-baboy-recipe/"
        
        meal_3 = self.new
        meal_3.name = "Linaga"
        meal_3.difficulty = "moderate"
        meal_3.url = "https://panlasangpinoy.com/nilagang-litid-ng-baka/"
        
        meal_4 = self.new
        meal_4.name = "Bistek"
        meal_4.difficulty = "easy"
        meal_4.url = "https://panlasangpinoy.com/bistek-tagalog-beefsteak-recipe/"
        
        meal_5 = self.new
        meal_5.name = "Kare-Kare"
        meal_5.difficulty = "difficult"
        meal_5.url = "https://panlasangpinoy.com/oxtail-kare-kare-recipe-peanut-stew/"
        
        meal_6 = self.new
        meal_6.name = "Pinakbet"
        meal_6.difficulty = "moderate"
        meal_6.url = "https://panlasangpinoy.com/pinakbet-tagalog-recipe-knr-sc/"
        
        meal_7 = self.new
        meal_7.name = "Dinuguan"
        meal_7.difficulty = "difficult"
        meal_7.url = "https://panlasangpinoy.com/dinuguan-blood-stew/"
        
        meal_8 = self.new
        meal_8.name = "Pancit"
        meal_8.difficulty = "moderate"
        meal_8.url = "https://panlasangpinoy.com/pancit-guisado-recipe-knr-sc/"
        
        meal_9 = self.new
        meal_9.name = "Lumpia"
        meal_9.difficulty = "moderate"
        meal_9.url = "https://panlasangpinoy.com/chicken-lumpia/"
        
        meal_10 = self.new
        meal_10.name = "-silog"
        meal_10.difficulty = "easy"
        meal_10.url = "https://panlasangpinoy.com/tapsilog-recipe/"
        
        [meal_1, meal_2, meal_3, meal_4, meal_5, meal_6, meal_7, meal_8, meal_9, meal_10]
  end
end