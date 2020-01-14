class ProfilesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @profiles = Profile.all
  end

  def new
    @profile =  Profile.new
  end

  def create
    Profile.create(profile_params)
  end

  def show
    Profile.create(profile_params)
  end

  private
  def profile_params
    params.permit(:name, :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
