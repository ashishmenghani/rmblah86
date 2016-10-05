class OpenGroupsController < ApplicationController
  before_action :set_open_group, only: [:show, :update, :destroy]

  # GET /open_groups
  def index
    @open_groups = OpenGroup.all

    render json: @open_groups
  end

  # GET /open_groups/1
  def show
    render json: @open_group
  end

  # POST /open_groups
  def create
    @open_group = OpenGroup.new(open_group_params)

    if @open_group.save
      render json: @open_group, status: :created, location: @open_group
    else
      render json: @open_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /open_groups/1
  def update
    if @open_group.update(open_group_params)
      render json: @open_group
    else
      render json: @open_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /open_groups/1
  def destroy
    @open_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_group
      @open_group = OpenGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def open_group_params
      params.require(:open_group).permit(:jid, :group_id)
    end
end
