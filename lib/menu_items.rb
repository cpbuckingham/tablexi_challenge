require 'csv'

class MenuCalculator
  def initialize(source_file)
    File.open(source_file, 'r') do |f|
      arr = []
      f.each_line do |line|
        arr << line
      end
      @money = arr[0][1..-1].to_f
      @array = arr[1..-1]
    end
    @array = @array.reduce(Array.new) do |memo, str|
      hash = {}
      arr = str.split(",")
      hash[:food] = arr[0]
      hash[:price] = arr[1][1..-1].to_f
      memo << hash
    end
  end

  def longest_receipt
    lowest_price = @array.inject do |memo, hash|
      memo[:price] < hash[:price] ? memo : hash
    end
    ((@money / lowest_price[:price]).to_i)
  end

  def totaling_array
    result = []
    totaling = longest_receipt
    totaling.times do |i|
      @array.repeated_combination(i+1).each do |combos|
        if array_total(combos) == @money
          result << combos
        end
      end
    end
    if result != []
      result
    else
      nil
    end
  end

  def array_total(arr)
    arr.inject(0) { |memo, hash| memo += hash[:price].to_f; memo }
  end

end

cal = MenuCalculator.new('data/menu_items.txt')
p cal.totaling_array

