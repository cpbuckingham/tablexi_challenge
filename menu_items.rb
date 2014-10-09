require 'csv'

total = 15.05
arr=[]
table = CSV.foreach('data/menu_data.csv', headers: true)
table.each do |row|
  arr << row.to_h
end
test1 = arr.repeated_combination(1).to_a.flatten
test2 = arr.repeated_combination(2).to_a.flatten
test3 = arr.repeated_combination(3).to_a.flatten
test4 = arr.repeated_combination(4).to_a.flatten

def array_total(arr)
  total = 0.0
  arr.each do |hash|
    total += hash["price"].to_f
  end
  total
end

p array_total(test1).round(2)
p array_total(test2).round(2)
p array_total(test3).round(2)
p array_total(test4).round(2)



# class MenuCalculator
#   def initialize(total, csv)
#     @total = total
#     @menu = CSV.foreach('data/menu_data.csv', headers: true)
#     csv.map do |row|
#       row.to_h
#     end
#
#     def one_item_equals_total
#       @menu.each do |food|
#         if food[:cost].count == @total
#           return food[:food] + food[:price]
#         end
#       end
#     end
#   end
# end
