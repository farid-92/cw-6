class UserController < ApplicationController

  def show
    @photos = Gallery.order(created_at: :desc)
    @user = User.find(params[:id])
  end

end
