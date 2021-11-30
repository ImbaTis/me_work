class JobsController < ApplicationController
  before_action :set_job, only: [:show]
  def show
  end

  def index
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end
end
