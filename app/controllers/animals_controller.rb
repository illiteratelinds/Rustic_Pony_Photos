class AnimalsController < ApplicationController
  def index
    @photos = Photos.find_by album: 'animals'
  end
end