class AllotedNumbersController < ApplicationController
  before_action :set_alloted_number, only: [:show, :update, :destroy]

  # GET /alloted_numbers
  def index
    @alloted_numbers = AllotedNumber.all

    render json: @alloted_numbers
  end

  # POST /alloted_numbers
  def create
    @alloted_number = AllotedNumber.new(alloted_number_params)

    if @alloted_number.save
      render json: @alloted_number, status: :created, location: @alloted_number
    else
      render json: @alloted_number.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alloted_number
      @alloted_number = AllotedNumber.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def alloted_number_params
      params.require(:alloted_number).permit(:first_name, :last_name, :number)
    end
end
