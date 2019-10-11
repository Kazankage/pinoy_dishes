class PinoyDishes::Pagkain

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
    
    puts <<-DOC

                     ---
                  ---   ---
                ---       ---
                  ---   ---
            ---      ---     _
         ---   ---         -- --
            ---           -- --
                         -- --   
                        -- --
        -----------------------------
        -----------------------------
        ---                       ---
         ---                     ---
          ---                   ---
           ---                ---
            --------------------  
      ________________________________
      --------------------------------
DOC
    puts "Hi there! Welcome to COOKIN WITH KAZAN!"
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
    answer = gets.strip.downcase
  
     case 
     
    when answer.include?("adobo") || answer.include?("1")

      puts "Here are the directions for cooking Adobo: "
      puts PinoyDishes::Meals.scrape_adobo.instructions
 
    when answer.include?("sinigang") || answer.include?("2")
 
       puts "Here are the directions for cooking Sinigang: "
       puts PinoyDishes::Meals.scrape_sinigang.instructions

    
    when answer.include?("nilaga") || answer.include?("3")
     
       puts "Here are the directions for cooking Niglaga: "
       puts PinoyDishes::Meals.scrape_nilaga.instructions

    when answer.include?("bistek") || answer.include?("4")
     
       puts "Here are the directions for cooking Bistek: "
       puts PinoyDishes::Meals.scrape_bistek.instructions
 
    when answer.include?("kare-kare") || answer.include?("5")
       
       puts "Here are the directions for cooking Kare-Kare: "
       puts PinoyDishes::Meals.scrape_kare_kare.instructions

    when answer.include?("pinakbet") || answer.include?("6")
       
       puts "Here are the directions for cooking Pinakbet: "
       puts PinoyDishes::Meals.scrape_pinakbet.instructions

    when answer.include?("diniguan") || answer.include?("7")

       puts "Here are the directions for cooking Dinuguan: "
       puts PinoyDishes::Meals.scrape_diniguan.instructions

    when answer.include?("bicol express") || answer.include?("8")
   
       puts "Here are the directions for cooking Bicol Express: "
       puts PinoyDishes::Meals.scrape_bicol_express.instructions

    when answer.include?("lumpia") || answer.include?("9")
     
       puts "Here are the directions for cooking Lumpia: "
       puts PinoyDishes::Meals.scrape_lumpia.instructions

    when answer.include?("tapsilog") || answer.include?("10")
     
       puts "Here are the directions for cooking Tapsilog: "
       puts PinoyDishes::Meals.scrape_tapsilog.instructions


    when answer.include?("exit")
        paalam
        exit
    else
      puts "Sorry, I didn't get that. Which food would you like to try to make?"
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