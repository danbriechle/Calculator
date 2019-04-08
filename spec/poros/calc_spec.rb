RSpec.describe Calc, type: :poro do
  describe "Class Methods" do
    describe ".calculate" do
      it "can preform single calculations" do
      input = '5*3'
      input_2 = '6/2'
      input_3 = '5+1'
      input_4 = '6-1'

      expect(Calc.calculate(input)).to eq(15)
      expect(Calc.calculate(input_2)).to eq(3)
      expect(Calc.calculate(input_3)).to eq(6)
      expect(Calc.calculate(input_4)).to eq(5)
      end
    end
  end
end
