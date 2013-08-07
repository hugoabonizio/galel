class Platform::DashboardController < ApplicationController
  def index
  end

  def search
    @result = Platform::Problem.where("problem LIKE ?", "%#{params[:search]}%")
  end
end
