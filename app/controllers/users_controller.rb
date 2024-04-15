class UsersController < ApplicationController
  before_action :profile
  
  def profile
    @user = User.find_by_username(params[:username])
  end

  private

end
