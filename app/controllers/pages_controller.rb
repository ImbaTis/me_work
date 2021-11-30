class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @jobs = current_user.favorited_jobs
    @resources = current_user.favorited_resources
  end

  def profile
    
  end


end
