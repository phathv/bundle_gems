module ApplicationHelper
  def page_title(title)
    content_for :title do
      title
    end
  end
  def check_logined?
    if(user_signed_in?)
      return true
    else
      return false
    end
  end
end
