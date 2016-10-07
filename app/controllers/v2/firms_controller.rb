module V2
class FirmsController < ApplicationController
  def index
    @firms = Firm.first

    render json: @firms
  end
end
end