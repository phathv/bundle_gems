class CommentsController < InheritedResources::Base
  belongs_to :product #using this method when mapping in routes
  #belongs_to :user
  respond_to :js , :only => [:create, :destroy]
  #before_filter :authenticate_user!, :except => [:index]
  #respond_to :html, :xml, :json
  def index
    index!{
      @comment = Comment.new
      @comment.user_id = current_user.id
    }
   
  end
  
  
end
