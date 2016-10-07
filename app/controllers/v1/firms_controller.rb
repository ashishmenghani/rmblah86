module V1
class FirmsController < ApplicationController
  before_action :set_firm, only: [:show, :update, :destroy]

  # GET /firms
  def index
    @firms = Firm.all

    render json: @firms
  end

  # GET /firms/1
  def show
    render json: @firm
  end

  # POST /firms
  def create
    @firm = Firm.new(firm_params)

    if @firm.save
      render json: @firm, status: :created, location: @firm
    else
      render json: @firm.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /firms/1
  def update
    if @firm.update(firm_params)
      render json: @firm
    else
      render json: @firm.errors, status: :unprocessable_entity
    end
  end

  # DELETE /firms/1
  def destroy
    @firm.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firm
      @firm = Firm.find(params[:firm_number])
    end

    # Only allow a trusted parameter "white list" through.
    def firm_params
      params.require(:firm).permit(:firm_number, :firm_full_name, :firm_short_name, :firm_domain, :firm_address)
    end
end
end
