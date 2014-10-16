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
    expect(calc.totaling_array).to eq([[{:food=>"cornbread", :price=>3.15}, {:food=>"cornbread", :price=>3.15}, {:food=>"cheese poppers", :price=>4.0}, {:food=>"maple bacon", :price=>6.85}, {:food=>"maple bacon", :price=>6.85}], [{:food=>"doughnuts", :price=>3.05}, {:food=>"doughnuts", :price=>3.05}, {:food=>"doughnuts", :price=>3.05}, {:food=>"cheese poppers", :price=>4.0}, {:food=>"cheese poppers", :price=>4.0}, {:food=>"maple bacon", :price=>6.85}], [{:food=>"cheese poppers", :price=>4.0}, {:food=>"cheese poppers", :price=>4.0}, {:food=>"cheese poppers", :price=>4.0}, {:food=>"cheese poppers", :price=>4.0}, {:food=>"cheese poppers", :price=>4.0}, {:food=>"cheese poppers", :price=>4.0}], [{:food=>"cornbread", :price=>3.15}, {:food=>"cinnamon rolls", :price=>2.45}, {:food=>"cinnamon rolls", :price=>2.45}, {:food=>"cinnamon rolls", :price=>2.45}, {:food=>"cinnamon rolls", :price=>2.45}, {:food=>"doughnuts", :price=>3.05}, {:food=>"cheese poppers", :price=>4.0}, {:food=>"cheese poppers", :price=>4.0}], [{:food=>"cinnamon rolls", :price=>2.45}, {:food=>"cinnamon rolls", :price=>2.45}, {:food=>"cinnamon rolls", :price=>2.45}, {:food=>"cinnamon rolls", :price=>2.45}, {:food=>"cinnamon rolls", :price=>2.45}, {:food=>"cinnamon rolls", :price=>2.45}, {:food=>"cinnamon rolls", :price=>2.45}, {:food=>"maple bacon", :price=>6.85}]])
  end

end


