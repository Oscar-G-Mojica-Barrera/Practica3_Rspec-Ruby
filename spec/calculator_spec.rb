require_relative '../lib/calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  describe "#add" do
    it "suma dos números" do
      result = calculator.add(2, 3)
      expect(result).to eq(5)
    end
  end

  describe "#subtract" do
    it "resta dos números" do
      result = calculator.subtract(5, 3)
      expect(result).to eq(2)
    end
  end

  describe "#multiply" do
    it "multiplica dos números" do
      result = calculator.multiply(4, 3)
      expect(result).to eq(12)
    end
  end

  describe "#divide" do
    it "divide dos números" do
      result = calculator.divide(10, 2)
      expect(result).to eq(5)
    end

    it "lanza un error al dividir por cero" do
      expect { calculator.divide(10, 0) }.to raise_error(ZeroDivisionError)
    end
  end
end
