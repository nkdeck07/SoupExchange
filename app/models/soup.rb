class Soup < ActiveRecord::Base
  attr_accessible :ingredients, :recipe, :title
  validates :title, presence: true
  belongs_to :user
  validates :user_id, presence: true
end

