class RestaurantsController < ApplicationController

  def create

  end

  def new

  end

  def edit

  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy

  end






end
