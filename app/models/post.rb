class Post < ActiveRecord::Base
  has_many :tags, through: :taggings
  has_many :taggings
  
  validates_presence_of :post
end
