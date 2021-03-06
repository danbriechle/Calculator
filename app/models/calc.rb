class Calc
  def self.calculate(math_string)
  result = 0
  # multiply
    math_string.scan(/(\d*)([*])(\d*)/).each do |array|
        result += array[0].to_f * array[2].to_f
        math_string.sub!(array.join,"")
     end

  #divide
    math_string.scan(/(\d*)([\/])(\d*)/).each do |array|
      result += array[0].to_f / array[2].to_f
      math_string.sub!(array.join,"")
      end

  #add
    math_string.scan(/(\d*)([+])(\d*)/).each do |array|
      result += array[0].to_f + array[2].to_f
      math_string.sub!(array.join,"")
      end
  #subtract
    math_string.scan(/(\d*)([-])(\d*)/).each do |array|
      result += array[0].to_f - array[2].to_f
      math_string.sub!(array.join,"")
      end

  result.round(2)
  end
end
