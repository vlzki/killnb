class JobsController < ApplicationController
	before_action :job_params, :set_user

	def index
		@jobs = Job.all
	end

	def show
		@job = Job.find(params[:id])
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
		@job = Job.find(params[:id])
		@job.destroy
		redirect_to jobs_path(@job)
	end

	private

	def set_user
    	@user= User.find(params[:user_id])
  	end

	def job_params
		params.require(:job).permit(:id)
	end
end


end

