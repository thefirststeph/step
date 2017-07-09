class RequestsController < ApplicationController
	def index
		@requests = Request.all
	end

	def show
		@request = Request.find(params[:id])
	end

	def new
		@request = Request.new
	end

	def create
		@request = Request.new(request_params)
		if @request.save
			redirect_to @request
		else
			@errors = @request.errors.full_messages
			render "new"
		end
	end

	def edit
		@request = Request.find(params[:id])
	end

	def update
		@request = Request.find(params[:id])
		if @request.update(request_params)
			redirect_to @request
		else
			@errors = @request.errors.full_messages
			render "edit"
		end
	end

	def destroy
		@request = Request.find(params[:id])
		@request.destroy
		redirect_to root_path
	end

	private
	def request_params
		params.require(:request).permit(:organization_id, :patient_id, :time, :location, :notes)
	end
end