class CalculatorController < ApplicationController
  def index
  end

  def new
    @result = Calc.calculate(params[:calculator][:input])
  end
end
