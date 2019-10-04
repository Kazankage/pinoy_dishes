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
  @meals = PinoyDishes::Meals.to_cook
  @meals.each_line.with_index(1) do |meal, i| 
    puts "#{i}. #{meal.name}. #{meal.difficulty}. #{meal.url}."
  end
  end
  
   def pano_gawin
    puts "Enter the number of the dish you wish to learn how to cook:"
    answer = nil
    answer = gets.strip
     if answer.to_i > 0
      the_meals = @meals[answer.to_i - 1]
       puts "#{i}. #{the_meal.name}. #{the_meal.difficulty}. #{the_meal.url}."
     elsif answer = Integer
      gutom_na_tayo
     else
      iba
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