class AssetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @assets = User.assets
  end

  def show
    @asset = User.assets.find(params[:id])
    @job = Job.new
  end
end
