class ZipcodeController < ApplicationController

  before_action :validate_params

  def show
    zipcode_finder = Zipcode.new
    zipcode = zipcode_finder.get_result(@lat, @lng)
    render json: {
      'zipcode': zipcode
    }, status: 200
  end

  def validate_params
    permitted = params.permit(:lat, :lng)
    @lat = permitted[:lat].to_f
    @lng = permitted[:lng].to_f
  end

end
