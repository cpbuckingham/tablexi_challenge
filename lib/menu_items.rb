class MenuCalculator
  def initialize
  end

  def read_file
    arr = []
    table = CSV.foreach('data/menu_data.csv', headers: true)
    table.each do |row|
      new = row.to_h
      arr << new
    end
  end
  end
require 'csv'

arr = []
table = CSV.foreach('data/menu_data.csv', headers: true)
table.each do |row|
  new = row.to_h
  arr << new
end

def longest_receipt(arr)
  total = 15.05
  lowest_price = arr.inject do |memo, hash|
    memo["price"] < hash["price"] ? memo : hash
  end
  ((total / lowest_price["price"].to_f).to_i) - 1
end

def totaling_array(arr)
  all_possible_receipts = []
  totaling = longest_receipt(arr)
  totaling.times do |i|
    arr.repeated_combination(i+1).each do |combos|
      all_possible_receipts << combos
    end
  end
  validator = valid_receipts_from_all(all_possible_receipts)
  if validator != []
    validator.map do |final_items|
      p "Valid Combination:"
      print "#{final_items}\n\n"
    end
  else
    p "Sorry no menu items match that price"
  end
end

def array_total(arr)
  total = 0.0
  arr.each do |hash|
    total += hash["price"].to_f
  end
  total
end

def valid_receipts_from_all(arr)
  arr.select { |receipt| array_total(receipt) == 15.05 }
end

totaling_array(arr)



