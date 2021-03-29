class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def self.get_data
    response = RestClient.get("http://www.recipepuppy.com/api/")
    results = JSON.parse(response)["results"]

    results.each do |result|
      new_recipe = self.create(title: result["title"], link: result["href"], thumbnail: result["thumbnail"])
      ings = result["ingredients"].split(", ")
      ings.each do |i|
        ing = Ingredient.find_or_create_by(name: i)
        new_recipe.ingredients << ing
      end
      new_recipe.save
    end
  end

end
