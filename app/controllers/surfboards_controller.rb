class SurfboardsController < ApplicationController
  def index
    @surfboards = Surfboard.all
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
