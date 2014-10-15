require 'spec_helper'
require 'menu_items'


describe 'MenuCalculator' do
  def parse_response
    MenuCalculator.new.read_file
  end

describe 'calculate menu items with 15.05' do
  it 'should return various combinations' do
    expect(parse_response).to eq([{"food"=>"mixed fruit", "price"=>"2.15"}, {"food"=>"hot wings", "price"=>"3.55"}, {"food"=>"hot wings", "price"=>"3.55"}, {"food"=>"sampler plate", "price"=>"5.80"}])
  end
end
end
