class PinoyDishes::CLI

 def call 
    gutom_na_tayo
    #pano_gawin
    #iba
    paalam
  end
  
  def gutom_na_tayo
    puts "Do you have a hankering for Filipino Food? (Y/N)"
    choice = nil
    choice = gets.strip
     case choice
      when "Y"
        puts "Which category would you like to choose from?"
        @meals = PinoyDishes::Meals.to_cook
        
        when "N"
          paalam
          exit
        end
  end
  
   def pano_gawin
    puts "Enter the name of the dish you wish to learn how to cook:"
    answer = nil
    answer = gets.strip
     case answer
    when "Adobo"
      puts "Here is the recipe for Adobo: https://panlasangpinoy.com/filipino-food-pork-adobo-recipe/"
    when "Sinigang"
      puts "Here is the recipe for Sinigang: https://panlasangpinoy.com/pork-sinigang-na-baboy-recipe/"
    when "Linaga"
      puts "Here is the recipe for Linaga: https://panlasangpinoy.com/nilagang-litid-ng-baka/"
    when "Bistek"
      puts "Here is the recipe for Bistek: https://panlasangpinoy.com/bistek-tagalog-beefsteak-recipe/"
    when "Kare-Kare"
      puts "Here is the recipe for Kare-Kare: https://panlasangpinoy.com/oxtail-kare-kare-recipe-peanut-stew/"
    when "Pinakbet"
      puts "Here is the recipe for Pinakbet: https://panlasangpinoy.com/pinakbet-tagalog-recipe-knr-sc/"
    when "Diniguan"
      puts "Here is the recipe for Diniguan: https://panlasangpinoy.com/dinuguan-blood-stew/"
    when "Pancit"
      puts "Here is the recipe for Pancit: https://panlasangpinoy.com/pancit-canton-recipe/"
    when "Lumpia"
      puts "Here is the recipe for Lumpia: https://panlasangpinoy.com/chicken-lumpia/"
    when "-silog"
      puts "Here is the recipe for -silog: https://panlasangpinoy.com/tapsilog-recipe/"
    end
  end
  
  def iba 
    puts "Would you like to learn more? Type 'Return' to return to the menu. If not, type 'Salamat'."
    input = nil
   input = gets.strip
    case input
      when "Return"
         gutom_na_tayo
         pano_gawin
         iba
      when "Salamat"
        paalam
        exit
  end
end
  
  def paalam
    puts "Ok. Sige. Salamat po!"
    puts "Enjoy your meal!"
  end
end