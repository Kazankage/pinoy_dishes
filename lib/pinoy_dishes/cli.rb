class PinoyDishes::CLI

 def call 
    gutom_na_tayo
    pano_gawin
    iba
    paalam
  end
  
  def gutom_na_tayo
    puts "Do you have a hankering for Filipino Food? (Y/N)"
    choice = nil
    choice = gets.strip
     case choice
      when "Y", "y", "Yes", "yes"
        puts "Which dish would you like to learn how to prepare?"
        when "N", "n", "No", "no"
          paalam
          exit
        else
          gutom_na_tayo
        end
  end
  
   def pano_gawin
      @meals = PinoyDishes::Meals.to_cook
      @meals.each_with_index do |meals, i|
        #binding pry
        puts "#{i + 1}) #{meals.name}"
      end
          
puts "Enter the name of the dish you wish to learn how to cook:"
    answer = nil
    answer = gets.strip
     case answer
    when "Adobo", "adobo", "Easy Chicken Adobo Recipe", 'easy chicken adobo recipe'
      puts "Here is the recipe for Adobo: https://panlasangpinoy.com/filipino-food-pork-adobo-recipe/"
    when "Sinigang", 'sinigang'
      puts "Here is the recipe for Sinigang: https://panlasangpinoy.com/pork-sinigang-na-baboy-recipe/"
    when "Nilnaga", "nilnaga", "Nilagang Litid ng Baka", "nilagang litid ng baka"
      puts "Here is the recipe for Nilaga: https://panlasangpinoy.com/nilagang-litid-ng-baka/"
    when "Bistek", "bistek", "Bistek Tagalog Recipe - Pinoy Beefsteak", "bistek tagalog recipe - pinoy beefsteak"
      puts "Here is the recipe for Bistek: https://panlasangpinoy.com/bistek-tagalog-beefsteak-recipe/"
    when "Kare-Kare", "kare-kare", "Oxtail Kare-Kare Recipe", "oxtail kare-kare recipe"
      puts "Here is the recipe for Kare-Kare: https://panlasangpinoy.com/oxtail-kare-kare-recipe-peanut-stew/"
    when "Pinakbet", "pinakbet", "Pinakbet Tagalog", "pinakbet tagalog"
      puts "Here is the recipe for Pinakbet: https://panlasangpinoy.com/pinakbet-tagalog-recipe-knr-sc/"
    when "Diniguan", "diniguan", "Dinuguan Recipe", "diniguan recipe"
      puts "Here is the recipe for Diniguan: https://panlasangpinoy.com/dinuguan-blood-stew/"
    when "Bicol Express", "bicol express", "Pork Bicol Express Recipe", "pork bicol express recipe"
      puts "Here is the recipe for Bicol Express: https://panlasangpinoy.com/pork-bicol-express-recipe/"
    when "Lumpia", "lumpia", "Chicken Lumpia", "chicken lumpia"
      puts "Here is the recipe for Lumpia: https://panlasangpinoy.com/chicken-lumpia/"
    when "Tapsilog", "tapsilog", "Tapsilog Recipe", "tapsilog recipe"
      puts "Here is the recipe for -silog: https://panlasangpinoy.com/tapsilog-recipe/"
    end

  end

  def iba 
    puts "Would you like to learn more? Type 'Return' to return to the menu. If not, type 'Salamat'."
    input = nil
   input = gets.strip
    case input
      when "Return", "return"
      
         pano_gawin
         iba
      when "Salamat", 'salamat'
        paalam
        exit
  end
end
  
  def paalam
    puts "Ok. Sige. Salamat po!"
    puts "Enjoy your meal!"
  end
end
