# frozen_string_literal: true

class ApplicationController < ActionController::API
  def render_errors(error_code:, status:)
    render json: { error_code: status, errors: errors.as_json }, status: status
  end
end
