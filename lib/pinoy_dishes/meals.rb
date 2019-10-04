class PinoyDishes::Meals
  
  attr_accessor :name, :difficulty, :url
  def self.to_cook
    # Should return buch of instances of recipies
=begin 
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
=end
        meal_1 = self.new
        meal_1.name = "Adobo" #For example, adobo! This one people switch the meat/ protein they use all the time. This recipe calls for chicken, but you could easily change it for beef or pork. It can also be made with SQUID! Thats called Pusit Adobo. Another one of my absolute favourites. Definitely should try it out. 
        meal_1.difficulty = "easy"
        #meal_1.description "Typically pork or chicken, or a combination of both, is slowly cooked in vinegar, cooking oil, crushed garlic, bay leaf, black peppercorns, and soy sauce, and often browned in the oven or pan-fried afterward to get the desirable crisped edges."
        meal_1.url = "https://panlasangpinoy.com/easy-chicken-adobo-recipe/"
         
         #So, Im currently using this website: https://panlasangpinoy.com/ to get my information, but I will probably change it. I think it would be too difficult to scrape from there as opposed to a website like this: https://en.wikipedia.org/wiki/List_of_Philippine_dishes which lists the dishes of the Philippiens very nicely. I think I might also add one more.. We'll see.
         
        meal_2 = self.new
        meal_2.name = "Sinigang" #If you have never had filipino food in your life.. I would suggest trying this as your first dish. Its a sour soup- so its perfect for when youre sick, and now that fall is here, (wow I really cant type or spell or word today) this would be perfect for any cold or flu that you- god forbid- catch. 
        meal_2.difficulty = "easy"
        meal_2.url = "https://panlasangpinoy.com/pork-sinigang-na-baboy-recipe/"
       
        meal_3 = self.new
        meal_3.name = "Linaga"
        meal_3.difficulty = "moderate"
        meal_3.url = "https://panlasangpinoy.com/nilagang-litid-ng-baka/"
        
        meal_4 = self.new
        meal_4.name = "Bistek" #Yo. This one is my favourite dish of all time. I could eat this everyday for the rest of my life if I could. THE ABSOLUTE BEST. And you know what is so cool bout this dish? You can substitute it (the meat) for whatever you want. Well, actually come to think of it, you can pretty much change the protein of any filipino dish and still make it work. 
        meal_4.difficulty = "easy"
        meal_4.url = "https://panlasangpinoy.com/bistek-tagalog-beefsteak-recipe/"
        
        meal_5 = self.new
        meal_5.name = "Kare-Kare" #Im super biased about this one. My mum makes the ABSOLUTE best Kare-Kare. No one else can compare. Everyone else's is inferior. Including the recipe for this one. Haha. Sorry. I probably should just remove this one from the list. XD 
        meal_5.difficulty = "difficult"
        meal_5.url = "https://panlasangpinoy.com/kare-kare-recipe/"
        
        meal_6 = self.new
        meal_6.name = "Pinakbet" #Theres a funny video of a guy cooking this. Hold on, let me get the link: https://www.youtube.com/watch?v=0XM0j5FwTyE This guy is great. 
        meal_6.difficulty = "moderate"
        #meal_6.url = "https://panlasangpinoy.com/pinakbet-tagalog-recipe-knr-sc/"
        
        meal_7 = self.new
        meal_7.name = "Dinuguan"
        meal_7.difficulty = "moderate"
        meal_7.url = "https://panlasangpinoy.com/dinuguan-blood-stew/"
        
        #As I continue to work on this mock cli, I think my original plan to scrap from the list of philippine dishes on wikipedia is the better choice. See. Makin decisions. 
        
        meal_8 = self.new
        meal_8.name = "Bicol Express" #This one used to be Pancit- I need to change that in "cli.rb," but there were just so many different choices for Pancit.
        meal_8.difficulty = "easy" #I love making this one so if anyone wants some personal pointers, lemme know. I got you.
        meal_8.url = "https://panlasangpinoy.com/how-to-cook-bicol-express-knr-pc/"
      
        meal_9 = self.new
        meal_9.name = "Lumpia" #The better tasting ones are made with ground pork. Not chicken. XD
        meal_9.difficulty = "moderate"
        meal_9.url = "https://panlasangpinoy.com/chicken-lumpia/"
        
        meal_10 = self.new
        meal_10.name = "-silog" #silog is a type of breakfast you find in the philippines. Many different kinds, Tapsilog, Longsilog, Tonsilog. Basically silog is slang for "with egg." Its a breakfast meat- Tapa, Longanisa, Tocino, served with eggs, and garlic fried rice.
        meal_10.difficulty = "easy"
        meal_10.url = "https://panlasangpinoy.com/tapsilog-recipe/"
        
        #Ok, that was a lot of work. Let's see if my code actually works tho.
        
  end
end