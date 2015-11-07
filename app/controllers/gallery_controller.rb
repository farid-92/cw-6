class GalleryController < ApplicationController
  def index
    @users = User.all
  end
end
