class CmsController < ApplicationController
  before_action :authenticate_user!

  def index
    @email = current_user_email
  end
end
