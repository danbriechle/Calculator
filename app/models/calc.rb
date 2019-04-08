class Calc
  def self.calculate(math_string)
  result = 0
  # multiply
    math_string.scan(/(\d*)([*])(\d*)/).each do |array|
        result += array[0].to_i * array[2].to_i
     end

  #divide
    math_string.scan(/(\d*)([\/])(\d*)/).each do |array|
      result += array[0].to_i / array[2].to_i
      end

  #add
    math_string.scan(/(\d*)([+])(\d*)/).each do |array|
      result += array[0].to_i + array[2].to_i
      end
  #subtract
    math_string.scan(/(\d*)([-])(\d*)/).each do |array|
      result += array[0].to_i - array[2].to_i
      end

  result
  end
end
