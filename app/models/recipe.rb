class Recipe < ActiveRecord::Base
  has_many :ingredients

  accepts_nested_attributes_for :ingredients

  validates :title, uniqueness: true, presence: true
end
