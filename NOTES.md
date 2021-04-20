How to Build a CLI Gem

1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. Force that to build the CLI interface
5. Stub out the interface
6. Start making things real
7. Discover objects.
8. Program

-- creating a command line interface to pull a list of vegetarian recipes from foodgawker.com

user types foodgawker
show a list of vegetarian recipes

1. Sheet pan huevos rancheros
2. Vegan ramen noodle stirfry
3. Spicy vegan jalfrezi tofu curry
4. Vegan lemon basil risotto with smoked tofu
5. Creamy vegan mushroom stroganoff

Which recipe would you like to make today?


Think about how you're going to get this information -

What is a recipe?

A recipe has a name
A recipe has ingredients
A recipe has a set of instructions
A recipe has a url


# recipe_1 = self.new
# recipe_1.name = "Sheet Pan Huevos Rancheros"
# recipe_1.ingredients = "eggs, black beans, green chiles, tomatoes, cilantro, tortilla chips"
# recipe_1.instructions = "Make the sauce, fry the eggs, add tortillas and cilantro"
# recipe_1.url = "http://www.theoregondietitian.com/sheet-pan-huevos-rancheros/"
#
# recipe_2 = self.new
# recipe_2.name = "Vegan Ramen Noodle Stir Fry"
# recipe_2.ingredients = "ramen noodles, soy sauce, shallots, carrots, hoisin, broccoli, sriracha, lime"
# recipe_2.instructions = "Cook the noodles, steam the broccoli and carrots, make sauce and add all together"
# recipe_2.url = "https://www.morganboulevard.com/vegan-ramen-noodle-stir-fry-recipe/"
#
# recipe_3 = self.new
# recipe_3.name = "Spicy Vegan Jalfrezi Tofu Curry"
# recipe_3.ingredients = "tofu, ginger, onion, green chilis, garlic, red pepper, tomatoes"
# recipe_3.instructions = "Fry the tofu, fry rest of veggies and spices, add tomatoes, stir in tofu"
# recipe_3.url = "https://thepeskyvegan.com/recipes/vegan-jalfrezi-tofu-curry/"
#
# recipe_4 = self.new
# recipe_4.name = "Vegan Lemon Basil Risotto with Smoked Tofu"
# recipe_4.ingredients = "smoked tofu, risotto rice, onion, garlic, white wine, lemon, nooch, veg stock, basil, cashew cream"
# recipe_4.instructions = "Bake tofu, cook risotto, add wine, top with basil and lemon"
# recipe_4.url = "https://thepeskyvegan.com/recipes/tofu-risotto-lemon-basil/"
#
# recipe_5 = self.new
# recipe_5.name = "Creamy Vegan Mushroom Stroganoff"
# recipe_5.ingredients = "mushrooms, garlic, onion, balsamic vinegar, white wine, broth, almond yogurt, arrowroot powder"
# recipe_5.instructions = "Cook onion then add mushrooms and garlic, deglaze with balsamic, add arrowroot, add yogurt and garnish"
# recipe_5.url = "https://debraklein.com/vegan-mushroom-stroganoff/"
# # ideally you want this method to return the recipe instances
# [recipe_1, recipe_2, recipe_3, recipe_4, recipe_5]


deleted from end of "if spec.respond_to?(:metadata)" and before "else"
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/megster82/foodgawker.git"
    #spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."
