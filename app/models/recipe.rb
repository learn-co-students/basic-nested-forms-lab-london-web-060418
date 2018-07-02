class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  # 
  # def ingredient_1
  #
  # end
  #
  # def ingredient_1
  #
  # end
  #
  # def ingredient_2=(ing)
  #
  # end
  #
  # def ingredient_2
  #   self.ingredient_2 ? self.ingredient_2.name
  # end
end
