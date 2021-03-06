class AssetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @assets = User.assets.where.not(latitude: nil, longitude: nil)

    if params[:selection]
      if params[:selection][:city].present?
        @assets = @assets.near(params[:selection][:city], 100)
      end
      if params[:selection][:weapons].present?
        @assets = @assets.where(weapons: params[:selection][:weapons])
      end
      # if params[:selection][:city].present? || params[:selection][:weapons].present?
      #   @assets = @assets.where(weapons: params[:selection][:weapons],"city LIKE ?","%#{params[:selection][:city].capitalize}%")
      # end
    end
    # @asset_coord = []
    # User.assets.each do |killer|
    #   @asset_coord << killer.near([killer.latitude][killer.longitude], 10)
    # end
    @hash = Gmaps4rails.build_markers(@assets) do |asset, marker|
      marker.lat asset.latitude
      marker.lng asset.longitude
      # marker.infowindow render_to_string(partial: "/assets/map_box", locals: { asset: asset })
    end
  end

  def show
    @asset = User.assets.find(params[:id])
    @asset_coordinates = { lat: @asset.latitude, lng: @asset.longitude }
    @hash = Gmaps4rails.build_markers(@assets) do |asset, marker|
      marker.lat asset.latitude
      marker.lng asset.longitude
      marker.infowindow render_to_string(partial: "/assets/map_box", locals: { asset: asset })
    end
    @job = Job.new
    @asset_jobs = @asset.jobs
  end
end
