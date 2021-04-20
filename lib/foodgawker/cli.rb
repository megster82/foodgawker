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
    @recipes = Foodgawker::Recipe.today
    @recipes.each.with_index(1) do |recipe, i|
      puts "#{i}. #{recipe.name} - #{recipe.ingredients} - #{recipe.instructions}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the recipe you'd like to make, or type list to see the recipes again, or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= @recipes.length
        the_recipe = @recipes[input.to_i-1]
        puts "#{the_recipe.name} - #{the_recipe.ingredients} - #{the_recipe.instructions}"
      elsif input == "list"
        list_recipes
      else
        puts "Not sure what you want, type list or exit:"
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more recipes!"
  end

end
