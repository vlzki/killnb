class Assets::JobsController < ApplicationController

  before_action :find_job, only: [:show, :update]

  def index
  end

  def show

#    @job   = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    @job.asset = @asset
    @job.user = current_user
    if @job.save
      redirect_to customers_job_path(@job)
    else
      render "assets/show"
    end
  end

  def update

    @job.update(job_params)
    redirect_to assets_jobs_path
  end

  private

  def find_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:review, :target_name, :description, :address, :deadline)
  end

end
