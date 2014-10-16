require 'spec_helper'
require 'menu_items'


describe 'MenuCalculator' do

  it 'should return various combinations' do
    calc = MenuCalculator.new('data/menu_items.txt')
    expect(calc.totaling_array).to eq([[{:food=>"mixed fruit", :price=>2.15}, {:food=>"hot wings", :price=>3.55}, {:food=>"hot wings", :price=>3.55}, {:food=>"sampler plate", :price=>5.8}], [{:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}]])
  end

  it 'should return nil when no combination is present' do
    calc = MenuCalculator.new('data/menu_items_nil.txt')
    expect(calc.totaling_array).to eq(nil)
  end

  it 'should return various combinations for a different number' do
    calc = MenuCalculator.new('data/menu_items_multiple.txt')
    expect(calc.totaling_array).to eq([[{:food=>"mixed fruit", :price=>2.15}, {:food=>"side salad", :price=>3.35}, {:food=>"side salad", :price=>3.35}, {:food=>"hot wings", :price=>3.55}, {:food=>"sampler plate", :price=>5.8}, {:food=>"sampler plate", :price=>5.8}], [{:food=>"french fries", :price=>2.75}, {:food=>"french fries", :price=>2.75}, {:food=>"side salad", :price=>3.35}, {:food=>"hot wings", :price=>3.55}, {:food=>"sampler plate", :price=>5.8}, {:food=>"sampler plate", :price=>5.8}], [{:food=>"side salad", :price=>3.35}, {:food=>"hot wings", :price=>3.55}, {:food=>"hot wings", :price=>3.55}, {:food=>"hot wings", :price=>3.55}, {:food=>"mozzarella sticks", :price=>4.2}, {:food=>"sampler plate", :price=>5.8}], [{:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"side salad", :price=>3.35}, {:food=>"mozzarella sticks", :price=>4.2}, {:food=>"mozzarella sticks", :price=>4.2}, {:food=>"sampler plate", :price=>5.8}], [{:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"french fries", :price=>2.75}, {:food=>"french fries", :price=>2.75}, {:food=>"mozzarella sticks", :price=>4.2}, {:food=>"mozzarella sticks", :price=>4.2}, {:food=>"sampler plate", :price=>5.8}], [{:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"side salad", :price=>3.35}, {:food=>"hot wings", :price=>3.55}, {:food=>"hot wings", :price=>3.55}, {:food=>"hot wings", :price=>3.55}, {:food=>"hot wings", :price=>3.55}], [{:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"side salad", :price=>3.35}, {:food=>"hot wings", :price=>3.55}, {:food=>"mozzarella sticks", :price=>4.2}], [{:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"mixed fruit", :price=>2.15}, {:food=>"french fries", :price=>2.75}, {:food=>"french fries", :price=>2.75}, {:food=>"hot wings", :price=>3.55}, {:food=>"mozzarella sticks", :price=>4.2}]])
  end
end


