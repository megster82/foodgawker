class Foodgawker::Recipe
  attr_accessor :name, :ingredients, :instructions, :url

  def self.today
    # Scrape foodgawker.com and return recipes based on that data
    self.scrape_recipes
  end

  def self.scrape_recipes
    recipes = []

    recipes << self.scrape_foodgawker
    #go to foodgawker.com, find the Recipes
    # extract the properties
    # instantiate a recipe
    recipes

  end

  def self.scrape_foodgawker
    doc = Nokogiri::HTML(open("https://foodgawker.com/post/category/vegetarian/"))
    binding.pry
  end

end
