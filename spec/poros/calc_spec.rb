RSpec.describe Calc, type: :poro do
  describe "Class Methods" do
    describe ".calculate" do
      it "can preform single calculations" do
      input = '5*3'
      input_2 = '6/2'

      expect(Calc.calculate(input)).to eq(15)
      expect(Calc.calculate(input_2)).to eq(3)
      end
    end
  end
end
