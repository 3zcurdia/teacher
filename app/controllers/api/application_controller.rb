# frozen_string_literal: true

module Api
  class ApplicationController < ActionController::API
    before_action :default_format_json

    protected

    def default_format_json
      request.format = "json"
    end
  end
end
