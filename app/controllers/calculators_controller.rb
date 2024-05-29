class CalculatorsController < ApplicationController
  def index    
  end
  def new
  end
  def create
    input = params[:calculator][:input]
    result = Calculator.add(input)
    @calculator = Calculator.create(input: input, result: result)
    render :show
  rescue => e
    @error = e.message
    render :new
  end

  def show
    @calculator = Calculation.find(params[:id])
  end
end
