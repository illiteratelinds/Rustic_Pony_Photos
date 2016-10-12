class PhotosController < ApplicationController
  def index
    @photos = Photo.order('created_at')
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = "The photo was added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:success] = "The photo was destroyed."
    redirect_to root_path
  end

  def return_animal_photos
    @photos = Photos.find_by album: 'animals'
  end

  def return_nature_photos
    @photos = Photos.find_by album: 'nature'
  end

  def return_wedding_photos
    @photos = Photos.find_by album: 'weddings'
  end
  private

  def photo_params
    params.require(:photo).permit(:image, :title)
  end
end