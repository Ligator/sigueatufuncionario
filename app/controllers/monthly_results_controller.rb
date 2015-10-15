class MonthlyResultsController < ApplicationController
  before_action :set_monthly_result, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @monthly_results = MonthlyResult.order("evaluation desc").group_by{ |u| u.release.beginning_of_month }
    respond_to do |format|
      format.html
      format.json { render json: @monthly_results }
    end
  end

  def show
    respond_with(@monthly_result)
  end

  def new
    @monthly_result = MonthlyResult.new
    respond_with(@monthly_result)
  end

  def edit
  end

  def create
    @monthly_result = MonthlyResult.new(monthly_result_params)
    @monthly_result.save
    respond_with(@monthly_result)

    # MonthlyResult.new(release: , functionay: , image: , agency: , evaluation:, place: )
  end

  def update
    @monthly_result.update(monthly_result_params)
    respond_with(@monthly_result)
  end

  def destroy
    @monthly_result.destroy
    respond_with(@monthly_result)
  end

  private
    def set_monthly_result
      @monthly_result = MonthlyResult.find(params[:id])
    end

    def monthly_result_params
      params.require(:monthly_result).permit(:release, :functionay, :image, :agency, :evaluation, :place)
    end
end
