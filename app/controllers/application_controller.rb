class ApplicationController < ActionController::Base
  def authenticate_user!
    unless session[:user_role] == 'admin'
      render json: { error: 'CMS - Unauthorized' }
    end
  end

  def current_user_email
    @current_user_email ||= session[:user_email]
  end
end
