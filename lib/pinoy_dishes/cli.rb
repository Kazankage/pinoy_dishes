class PinoyDishes::CLI

 def call 
    gutom_na_tayo
    pano_gawin
    iba
    paalam
  end
  
  def gutom_na_tayo
    puts "Do you have a hankering for Filipino Food? Try making one of these dishes:"
    puts <<-DOC.gsub /^\s*/, ''
      1) Adobo
      2) Sinigang
      3) Linaga
      4) Bistek
      5) Kare-Kare
      6) Pinakbet
      7) Diniguan
      8) Bicol Express
      9) Lumpia
      10) -silog
    DOC
  #@meals = PinoyDishes::Meals.to_cook
  end
  
   def pano_gawin
    puts "Enter the number of the dish you wish to learn how to cook:"
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
    puts "Would you like to learn more? Type 'return' to return to the menu. If not, type 'Salamat'."
    input = nil
   input = gets.strip
    case input
      when "return"
         gutom_na_tayo
         pano_gawin
         iba
  end
end
  
  def paalam
    puts "Ok. Sige. Salamat po!"
    puts "Enjoy your meal!"
  end
end