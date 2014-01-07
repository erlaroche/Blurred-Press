module ApplicationHelper
  def current_user
    session[:user]
  end

  # Displays wrapped content if a user is logged in.
  #
  # Returns nothing.
  def user_content(&block)
    capture(&block) if current_user
  end

  def user_status
    if current_user
      after_sign_in_path_for
      link_to log_out_path do
        %i.icon-user
        Log out
    - else
      = link_to log_in_path do
        %i.icon-user
        Log in 
  end
    
  end
end