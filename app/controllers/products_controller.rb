class ProductsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:index]
  #before_filter :check_permission, :only => [:edit, :update, :destroy]
  #actions :all
  def create  
    create! { products_path }  #return to list, pass over show action
  end  
end
