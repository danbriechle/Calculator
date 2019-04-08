class CalculatorController < ApplicationController
  def index
  end

  def new
    @previous = math_params[:input]
    @result = Calc.calculate(math_params[:input])
    render :index
  end

  private

  def math_params
    params.require(:calculator).permit(:input)
  end
end
