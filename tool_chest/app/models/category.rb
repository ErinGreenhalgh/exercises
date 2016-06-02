class Category < ActiveRecord::Base
  has_many :tools_categories
  has_many :tools, through: :tools_categories
end
