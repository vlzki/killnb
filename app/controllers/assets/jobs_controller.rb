class Assets::JobsController < ApplicationController

  before_action :find_job, only: [:show, :update]

  def index
  end

  def show

#    @job   = Job.find(params[:id])
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
    params.require(:job).permit(:review)
  end

end
