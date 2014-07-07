class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  
  #-> Prelang (user_login:devise)
  def require_user_signed_in
    unless user_signed_in?

      # If the user came from a page, we can send them back.  Otherwise, send
      # them to the root path.
      # if request.env['HTTP_REFERER']
      #   fallback_redirect = :back
      # else
      #   fallback_redirect = new_user_session_path
      # end

      redirect_to new_user_session_path, flash: {error: "You must be signed in to view this page."}
    end
  end

end
