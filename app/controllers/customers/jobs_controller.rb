class Customers::JobsController < ApplicationController

  before_action :find_job, only: [:show, :update]

  def index
  end

  def show
    @jobs = Job.where(user: current_user)
  end

  def update
    @job.update(job_params)
    redirect_to asset_path(@job.user_id)
  end

  private

  def find_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:review)
  end

end
