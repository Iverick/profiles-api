class Api::V1::DashboardController < ApplicationController
  def index
    @response = {}
    @response[:users_count] = User.count
    @response[:profiles_count] = Profile.count
    @response[:profiles_older_18] = Profile.profiles_older_18 

    render json: @response
  end
end
