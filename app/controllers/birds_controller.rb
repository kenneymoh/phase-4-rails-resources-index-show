class BirdsController < ApplicationController
  #get /birds
  def index
    birds = Bird.all
    render json: birds
  end

  #get /birds/:id
  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: bird
    else
      render json: {error: "Birdnot found"}, status: :not_found
    end
  end
  
end
