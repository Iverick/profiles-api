class Api::V1::DashboardController < ApplicationController
  def index
    @response = {}
    @response[:users_count] = User.count
    @response[:profiles_count] = Profile.count
    @response[:adult_profiles_count] = Profile.adults.count 

    render json: @response
  end
end
