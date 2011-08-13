class CategoriesController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:index]
  #before_filter :check_permission, :only => [:edit, :update, :destroy]
end
