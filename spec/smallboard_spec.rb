require_relative '../lib/cookie_monster/console'
# require 'spec_helper'


describe CookieModel,"running smaller boards" do
  map2 = [[ 1, 3],
          [-1, 3]]

  map3 = [[ 1, 3, 0],
          [-1, 3, 2],
          [ 5, 4, 8]]

  it 'does not pass with last array of main grid' do
    expect(CookieModel.new.find_path([ 0, 0, 3, 1, 5, 2, 1, 5, 4, 1, 3, 3], 12)).to eq 28
  end

  it 'does not pass with last two of main grid' do
    expect(CookieModel.new.find_path([ 1, 3, 0, 5,-1, 7,-1,-1, 0, 4, 2, 1], 10)).to eq 34
  end

  it 'does not pass with 2x2 gid' do
    expect(CookieModel.new(map2).find_path).to eq 7
  end

  it 'does not pass with 3x3 gid' do
    expect(CookieModel.new(map3).find_path).to eq 19
  end
end