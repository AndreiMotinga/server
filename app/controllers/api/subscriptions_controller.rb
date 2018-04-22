class Api::SubscriptionsController < ApiController
  before_action :authenticate_api_user!

  def create
    if current_api_user.save_and_make_payment(Plan.first, params[:token])
      render json: current_api_user.to_json, status: 201
    else
      render json: {}, status: 422
    end
  end
end
