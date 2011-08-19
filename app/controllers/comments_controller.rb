class CommentsController < InheritedResources::Base
  belongs_to :product #using this method when mapping in routes
  respond_to :js, :only => [:create, :delete]
  before_filter :authenticate_user!, :except => [:index]
  #respond_to :html, :xml, :json
  def create
    create! { collection_url} #product_comments_path
  end
  
end
