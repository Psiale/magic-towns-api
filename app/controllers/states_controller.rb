class StatesController < ApplicationController
  before_action :set_state, only: [:show, :update, :destroy]

  def index
    @states = State.all
    render json: @states
  end

  def create
    @state = State.create!(state_params)
    json_response(@state, :created)
  end

  def show
    json_response(@state)    
  end

  def update
    @state.update(state_params)
    head :no_content
  end

  def destroy
    @state.destroy
    head :no_content
  end

  private

  def state_params
    params.permit(:name)
  end

  def set_state
    @state = State.find(params[:id])
  end

end
