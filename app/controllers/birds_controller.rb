class BirdsController < ApplicationController
  # def index
  #   # @birds = Bird.all
  #   # render json: @birds
  #   birds = Bird.all
  #   # render json: birds, only: [:id, :name, :species]
  #   render json: birds, except: [:created_at, :updated_at]
  # end

  def index
    birds = Bird.all
    render json: birds.to_json(except: [:created_at, :updated_at])
  end 

  def show
    bird = Bird.find_by(id: params[:id])
    render json: {id: bird.id, name: bird.name, species: bird.species } 
  end
  
end