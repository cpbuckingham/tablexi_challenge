require 'spec_helper'
require 'menu_items'


describe 'MenuCalculator' do
  # def parse_response
  #   MenuCalculator.new
  # end


  it 'should return various combinations' do
    calc = MenuCalculator.new(15.05, 'data/menu_data.csv')
    expect(calc.totaling_array).to eq([[{"food"=>"mixed fruit", "price"=>"2.15"}, {"food"=>"hot wings", "price"=>"3.55"}, {"food"=>"hot wings", "price"=>"3.55"}, {"food"=>"sampler plate", "price"=>"5.80"}]])
  end

  it 'should return nil when no combination is present' do
    calc = MenuCalculator.new(1.05, 'data/menu_data.csv')
    expect(calc.totaling_array).to eq(nil)
  end

  it 'should return various combinations for a different number' do
    calc = MenuCalculator.new(10.05, 'data/menu_data.csv')
    expect(calc.totaling_array).to eq([[{"food"=>"side salad", "price"=>"3.35"}, {"food"=>"side salad", "price"=>"3.35"}, {"food"=>"side salad", "price"=>"3.35"}]])
  end
end


