class CommentsController < InheritedResources::Base
  belongs_to :product #using this method when mapping in routes
  
end
