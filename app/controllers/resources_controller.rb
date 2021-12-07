class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show]

  def show
  end

  def index
    if params == ''
      @resources = Resource.where(kind: params[:kind])
    else
      @resources = Resource.all
    end

  end

  def article
    @jobs = Job.where(kind: 'article')
  end

  def book
    @jobs = Job.where(kind: 'book')
  end

  def course
    @jobs = Job.where(kind: 'course')
  end

  def video
    @jobs = Job.where(kind: 'video')
  end

  private

  def set_resource
    @resource = Resource.find(params[:id])
  end

end
