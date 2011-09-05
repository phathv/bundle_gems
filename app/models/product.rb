class Product < ActiveRecord::Base
  attr_accessible :name, :price, :released_on, :category_id, :rating, :discontinued, :photo
  belongs_to :category
  validates_presence_of :name, :price
  has_many :comments, :dependent => :destroy, :order => 'created_at DESC'
  has_attached_file :photo, :styles => {:normal => "300x250>", :small => "100x100>" },
  :url => "/assets/products/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  
  #has_attached_file :photo, :styles => {:normal => "300x250>", :small => "100x100>" },
  #                          :url => "/assets/products/:id/:style/:basename.:extension",  
  #                          :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  #validates_attachment_presence :photo  
  #validates_attachment_size :photo, :less_than => 5.megabytes  
  #validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']                             
end
