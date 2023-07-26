# frozen_string_literal: true

class SearchController < ApplicationController
  def postal_code
    @postal_code = Postal.find_by(postal_code: params[:postal_code])
    render json: @postal_code
  end
end
