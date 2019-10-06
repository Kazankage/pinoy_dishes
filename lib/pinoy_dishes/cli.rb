class PinoyDishes::CLI

 def call 
    gutom_na_tayo
    pano_gawin
    iba
    paalam
  end
  
  def paalam
    puts "Ok. Sige. Salamat po!"
    puts "Enjoy your meal!"
  end
  
  def gutom_na_tayo
puts "Do you have a hankering for Filipino Food? (Y/N)"
    choice = nil
    choice = gets.strip
     case choice
      when "Y", "y", "Yes", "yes"
        puts "From the list below, which dish would you like to learn how to prepare?"
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
      
        puts "#{i + 1}) #{meals.name}."
      end
      
puts "Enter the name of the dish you wish to learn how to cook:"
    answer = nil
    answer = gets.strip
     case answer
    when "Adobo", "adobo", "Easy Chicken Adobo Recipe", 'easy chicken adobo recipe', "1"

      puts "Here are the directions for Adobo: "
      puts PinoyDishes::Meals.scrape_adobo.instructions
=begin  @meals_adobo.each do |meals|
       puts "#{meals.instructions}"
      end
      puts "Here is the recipe for Adobo: https://panlasangpinoy.com/filipino-food-pork-adobo-recipe/"
=end     
    when "Sinigang", 'sinigang', "2"
 
       puts "Here are the directions for Sinigang: "
       puts PinoyDishes::Meals.scrape_sinigang.instructions
=begin      @meals.each do |meals|
        puts "#{meals.instructions}"
      end
=end      # puts "Here is the recipe for Sinigang: https://panlasangpinoy.com/pork-sinigang-na-baboy-recipe/"
    
    when "Nilaga", "nilaga", "Nilagang Litid ng Baka", "nilagang litid ng baka", "3"
     
       puts "Here are the directions for Niglaga: "
       puts PinoyDishes::Meals.scrape_nilaga.instructions
=begin      @meals.each do |meals|
        puts "#{meals.instructions}"
      end
=end      # puts "Here is the recipe for Nilaga: https://panlasangpinoy.com/nilagang-litid-ng-baka/"
    
    when "Bistek", "bistek", "Bistek Tagalog Recipe - Pinoy Beefsteak", "bistek tagalog recipe - pinoy beefsteak", "4"
     
       puts "Here are the directions for Bistek: "
       puts PinoyDishes::Meals.scrape_bistek.instructions
=begin      @meals.each do |meals|
        puts "#{meals.instructions}"
      end
      
      # puts "Here is the recipe for Bistek: https://panlasangpinoy.com/bistek-tagalog-beefsteak-recipe/"
=end    
    when "Kare-Kare", "kare-kare", "Oxtail Kare-Kare Recipe", "oxtail kare-kare recipe", "5"
       
       puts "Here are the directions for Kare-Kare: "
       puts PinoyDishes::Meals.scrape_kare_kare.instructions
=begin      @meals.each do |meals|
        puts "#{meals.instructions}"
      end
=end      # puts "Here is the recipe for Kare-Kare: https://panlasangpinoy.com/oxtail-kare-kare-recipe-peanut-stew/"
    
    when "Pinakbet", "pinakbet", "Pinakbet Tagalog", "pinakbet tagalog", "6"
       
       puts "Here are the directions for Pinakbet: "
       puts PinoyDishes::Meals.scrape_pinakbet.instructions
=begin      @meals.each do |meals|
        puts "#{meals.instructions}"
      end
=end      # puts "Here is the recipe for Pinakbet: https://panlasangpinoy.com/pinakbet-tagalog-recipe-knr-sc/"
    
    when "Diniguan", "diniguan", "Dinuguan Recipe", "diniguan recipe", "7"

       puts "Here are the directions for Dinuguan: "
       puts PinoyDishes::Meals.scrape_diniguan.instructions
=begin      @meals.each do |meals|
        puts "#{meals.instructions}"
      end
=end      # puts "Here is the recipe for Diniguan: https://panlasangpinoy.com/dinuguan-blood-stew/"
    
    when "Bicol Express", "bicol express", "Pork Bicol Express Recipe", "pork bicol express recipe", "8"
   
       puts "Here are the directions for Bicol Express: "
       puts PinoyDishes::Meals.scrape_bicol_express.instructions
=begin      @meals.each do |meals|
        puts "#{meals.instructions}"
      end
=end      # puts "Here is the recipe for Bicol Express: https://panlasangpinoy.com/pork-bicol-express-recipe/"
    
    when "Lumpia", "lumpia", "Chicken Lumpia", "chicken lumpia", "9"
     
       puts "Here are the directions for Lumpia: "
       puts PinoyDishes::Meals.scrape_lumpia.instructions
=begin      @meals.each do |meals|
        puts "#{meals.instructions}"
      end
=end      # puts "Here is the recipe for Lumpia: https://panlasangpinoy.com/chicken-lumpia/"
    
    when "Tapsilog", "tapsilog", "Tapsilog Recipe", "tapsilog recipe", "10"
     
       puts "Here are the directions for Tapsilog: "
       puts PinoyDishes::Meals.scrape_tapsilog.instructions
=begin      @meals.each do |meals|
        puts "#{meals.instructions}"
      end
=end      # puts "Here is the recipe for -silog: https://panlasangpinoy.comhcipe/"
    when "exit", "Exit", "EXIT"
        paalam
        exit
    else
      pano_gawin
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
  
  
end
end