#our CLI Controller

class Foodgawker::CLI

  def call
    list_recipes
    # ask for user input
    menu
    goodbye
  end

  def list_recipes
    # get recipes
    puts "Today's Vegetarian Recipes:"
    # puts <<-DOC.gsub /^\s*/, '' # here doc aka a giant string
    # 1. Street pan huevos rancheros
    # 2. Vegan ramen noodle stirfry
    # 3. Spicy vegan jalfrezi tofu curry
    # 4. Vegan lemon basil risotto with smoked tofu
    # 5. Creamy vegan mushroom stroganoff
    # DOC
    @recipes = Foodgawker::Recipe.today
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the recipe you'd like to make, or type list to see the recipes again, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on Recipe 1..."
      when "2"
        puts "More info on Recipe 2..."
      when "3"
        puts "More info on Recipe 3..."
      when "4"
        puts "More info on Recipe 4..."
      when "5"
        puts "More info on Recipe 5..."
      when "list"
        list_recipes
      else
        puts "Not sure what you want, type list or exit"
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more recipes!"
  end

end
