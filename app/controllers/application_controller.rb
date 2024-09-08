class ApplicationController < ActionController::API
  rescue_from SKError, with: :normal_error_400
  rescue_from SKAuthenticationError, with: :not_authenticated

  def normal_error_400(e)
    render json: { status: 400, message: e.message }, status: :bad_request
  end

  def not_authenticated(e)
    render json: { status: 401, message: "Not Authenticated" }, status: :unauthorized
  end
end
