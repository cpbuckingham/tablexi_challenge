require 'csv'

class MenuCalculator
  def initialize(money, csv)
    @money = money
    @arr = []
    table = CSV.foreach(csv, headers: true)
    table.each do |row|
      new = row.to_h
      @arr << new
    end
  end

  def longest_receipt
    lowest_price = @arr.inject do |memo, hash|
      memo["price"] < hash["price"] ? memo : hash
    end
    ((@money / lowest_price["price"].to_f).to_i) - 1
  end

  def totaling_array
    result = []
    totaling = longest_receipt
    totaling.times do |i|
      @arr.repeated_combination(i+1).each do |combos|
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
    arr.inject(0) { |memo, hash| memo += hash["price"].to_f; memo }
  end

end

cal = MenuCalculator.new(90.05, 'data/menu_data.csv')
p cal.totaling_array


