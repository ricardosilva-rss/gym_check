class GymsController < ApplicationController
  before_action :set_gym, only: %i[show edit update destroy]

  def index
    @gyms = Gym.all
  end

  def show
  end

  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.new(gym_params)

    if @gym.save
      redirect_to gym_path(@gym)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @gym.update(gym_params)
      redirect_to gym_path(@gym)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @gym.destroy

    redirect_to gyms_path, status: :see_other
  end

  private

  def set_gym
    @gym = Gym.find(params[:id])
  end

  def gym_params
    params.require(:gym).permit(:name, :address, :amount_of_times)
  end
end
