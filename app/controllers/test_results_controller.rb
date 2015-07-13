class TestResultsController < ApplicationController
  before_action :set_test_result, only: [:show, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create]

  # GET /test_results
  # GET /test_results.json
  def index
    @test_results = TestResult.all
  end

  # GET /test_results/1
  # GET /test_results/1.json
  def show
  end

  # POST /test_results
  # POST /test_results.json
  def create
    @test_result = TestResult.new(test_result_params)

    respond_to do |format|
      if @test_result.save
        format.html { redirect_to @test_result, notice: 'Test result was successfully created.' }
        format.json { render :show, status: :created, location: @test_result }
      else
        format.html { render :new }
        format.json { render json: @test_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_results/1
  # DELETE /test_results/1.json
  def destroy
    @test_result.destroy
    respond_to do |format|
      format.html { redirect_to test_results_url, notice: 'Test result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_result
      @test_result = TestResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_result_params
      params.require(:test_result).permit(:system_under_test, :passed, :run_by_whom, :test_details)
    end
end
