class AssetsController < ApplicationController
  def index
    @assets = User.assets
  end

  def show
    @asset = User.assets.find(params[:id])
    @job = Job.new
  end
end