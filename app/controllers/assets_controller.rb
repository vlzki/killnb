class AssetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @assets = User.assets
    # if params[:selection][:weapons]
   # @assets = User.all.where(weapons: params[:selection][:weapons])
    # @assets = User.all.where("city LIKE ?","%#{params[:selection][:city].capitalize}%")

    # @assets = User.all.near(params[:selection][:city], limit)
  end

  def show
    @asset = User.assets.find(params[:id])
    @job = Job.new
  end
end
