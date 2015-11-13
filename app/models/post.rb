class Post < ActiveRecord::Base
  has_many :tags, through: :taggings
  validates_presence_of :post
end
