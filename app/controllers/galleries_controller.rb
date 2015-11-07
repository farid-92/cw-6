class GalleriesController < ApplicationController

    before_action :authenticate_user!, only: :create

    def index
      @photos = Gallery.order(created_at: :desc).paginate(page: params[:page], per_page: 6)
    end

    def new
      @photo = Gallery.new
    end

    def create
      @photo = current_user.galleries.build(photo_params)
      if @photo.save
        redirect_to root_url
      else
        render 'index'
      end
    end

    def show
      @photo = Gallery.find(params[:id])
    end

    def destroy
      @photo = Gallery.destroy(params[:id])
      redirect_to root_url
    end

    private

    def photo_params
      params.require(:gallery).permit( :title, :image)
    end


end
