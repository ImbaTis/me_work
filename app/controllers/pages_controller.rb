class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :home, :joinus, :comingsoon, :collect_email ]

  def home
    render layout: 'landing'
  end

  def dashboard
    @jobs = current_user.favorited_jobs
    @resources = current_user.favorited_resources
    @user = current_user
    @newjobs = Job.where(new: true)
    render layout: 'notification'
  end

  def profile
    @user = current_user
  end

  def assessments
    @assessments = Assessment.all
  end

  def joinus
    render layout: 'landing'
  end

  def comingsoon
    render layout: 'landing'
  end

  def collect_email
    @visitor_email = VisitorEmail.create(email: params[:email])
    redirect_to root_path
  end



end
