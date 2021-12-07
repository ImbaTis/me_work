class JobsController < ApplicationController
  before_action :set_job, only: [:show]
  def show
    respond_to do |format|
      format.html
      format.json #{ render json: @job }
    end
  end

  def index
    @jobs = Job.all
    @user = current_user
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end
end
