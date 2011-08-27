class Product < ActiveRecord::Base
  attr_accessible :name, :price, :released_on, :category_id, :rating, :discontinued
  belongs_to :category
  validates_presence_of :name, :price
  has_many :comments, :dependent => :destroy, :order => 'created_at DESC'
end
