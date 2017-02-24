class JobsController < ApplicationController
	before_action :set_asset, only: [:create]
	before_action :set_job, only: [:destroy, :done]

	def index
		@jobs = current_user.jobs
	end

	def show
	end

	def create
		raise
		@job = Job.new(job_params)
		@job.asset = @asset
    @job.user = current_user
    raise
    if @job.save
			redirect_to customers_job_path(@job)
		else
			render "assets/show"
    end
	end

	def destroy
		@job.destroy
		redirect_to jobs_path(@user)
	end

  def done
    raise "job #{@job.id} is done"
  end

	private

	def set_job
		@job = Job.find(params[:id])
	end

	def set_asset
    @asset = User.find(params[:asset_id])
  end

	def job_params
		params.require(:job).permit(:id, :target_name, :description, :address, :deadline)
	end
end


