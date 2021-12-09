class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    render layout: 'landing'
  end

  def dashboard
    @jobs = current_user.favorited_jobs
    @resources = current_user.favorited_resources
    @user = current_user
    @newjobs = Job.where(new: true)
  end

  def profile
    @user = current_user
  end

  def assessments
    @assessments = Assessment.all
  end



end
