RSpec.describe Calc, type: :poro do
  describe "Class Methods" do
    describe ".calculate" do
      it "can preform single calculations" do
      input = '5*3'

      expect(Calc.calculate(input)).to eq(15)
      end
    end
  end
end
