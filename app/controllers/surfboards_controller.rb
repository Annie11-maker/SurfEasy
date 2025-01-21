class SurfboardsController < ApplicationController
  def index
<<<<<<< HEAD
    @surfboard = Surfboard.all
=======
    @surfboards = Surfboard.all
>>>>>>> master
  end

  def show
    @surfboard = Surfboard.new
  end

  def edit
  end

  def create
  end

  def new
  end

  def update
  end

  def destroy
  end
end
