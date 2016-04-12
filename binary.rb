module Helper
  def convert_to_binary(number)
    number.to_s(2)
  end
end

class Binary
  include Helper
  @number = 0

  def initialize no
    @number = no
  end

  def count_zero_output
    binary = convert_to_binary @number
    zero_condition binary
  end

  def zero_condition binary
    temp_var = arrayCounter = temp_save = 0
    counter = Array.new
    binary = binary.to_s
    array = binary.split("")
    binary_gap(array, arrayCounter, counter, temp_save, temp_var)
    counter = (counter.empty?) ? 0 : counter.max

  end

  def binary_gap(array, arrayCounter, counter, temp_save, temp_var)
    while temp_var < array.length
      if array[temp_var] == "0"
        temp_save+=1
        if array[temp_var+1] == "1"
          counter[arrayCounter]=temp_save
          temp_save = 0
          arrayCounter+=1
        end
      end
      temp_var+=1
    end
  end


end

value = 15
object = Binary.new value
puts "Binary Value : #{value.to_s(2)}"
puts "Output : #{object.count_zero_output}"