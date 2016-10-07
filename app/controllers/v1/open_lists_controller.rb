module V1
class OpenListsController < ApplicationController
  before_action :set_open_list, only: [:show, :update, :destroy]

  # GET /open_lists
  def index
    @open_lists = OpenList.all

    render json: @open_lists
  end

  # GET /open_lists/1
  def show
    render json: @open_list
  end

  # POST /open_lists
  def create
    @open_list = OpenList.new(open_list_params)

    if @open_list.save
      render json: @open_list, status: :created, location: @open_list
    else
      render json: @open_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /open_lists/1
  def update
    if @open_list.update(open_list_params)
      render json: @open_list
    else
      render json: @open_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /open_lists/1
  def destroy
    @open_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_list
      @open_list = OpenList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def open_list_params
      params.require(:open_list).permit(:jid, :list_id)
    end
end
end
