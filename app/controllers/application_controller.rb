class ApplicationController < ActionController::API
  include ActionController::Serialization

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private

  def not_found
    render json: { message: 'Record not found', status: 404 }, status: :not_found
  end
end
