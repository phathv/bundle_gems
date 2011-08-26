module CommentsHelper
  def get_user_by_id(user_id)
    #return "kevin"
    User.find(params[:user_id]).email
  end
  def get_user_name(user_id)
    #@email = 
  end
end
