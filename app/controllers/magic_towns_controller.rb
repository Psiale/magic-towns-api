class MagicTownsController < ApplicationController
  before_action :set_state, except: [:index_no_state]
  before_action :set_magic_town, only: [:show, :update, :destroy]

  def index
    render json: @state.magic_towns
  end

  def index_no_state
    @magic_towns = MagicTown.all
    render json: @magic_towns
  end
  def create
    @state.magic_towns.create!(magic_town_params)
    render json: @state
  end

  def show
    render json: @magic_town    
  end

  def update
    @magic_town.update(magic_town_params)
    head :no_content
  end

  def destroy
    @magic_town.destroy
    head :no_content
  end

  private

  def magic_town_params
    params.permit(:name, :characteristics, :attractions, :festivities, :location, :state_id, :id)
  end

  def set_state
    @state = State.find(params[:state_id])
  end

  def set_magic_town
    @magic_town = @state.magic_towns.find(params[:id]) if @state
  end

end
