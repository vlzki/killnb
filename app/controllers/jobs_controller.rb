class JobsController < ApplicationController
	before_action :set_user, only: [:new, :create, :destroy]
	before_action :set_job, only: [:show, :destroy]

	def index
		@jobs = Job.all
	end

	def show
	end

	def new
		@job = Job.new
	end

	def create
		@job = Job.new(job_params)
		@job.user = @user
    if @job.save
			redirect_to jobs_path
		else
			render :new
    	end
	end

	def destroy
		@job.destroy
		redirect_to jobs_path(@user)
	end

	private

	def set_job
		@job = Job.find(params[:id])
	end

	def set_user
    	@user= User.find(params[:asset_id])
  	end

	def job_params
		params.require(:job).permit(:id)
	end
end


