class Tool < ActiveRecord::Base
  belongs_to :user
  has_many :tools_categories
  has_many :categories, through: :tools_categories
  validates :name, presence: :true
end
