require_relative '../lib/cookie_monster/console'

puts "should be 28, gets: #{CookieModel.new.find_path([ 0, 0, 3, 1, 5, 2, 1, 5, 4, 1, 3, 3], 12)}"



puts "should be 34, gets: #{CookieModel.new.find_path([ 1, 3, 0, 5,-1, 7,-1,-1, 0, 4, 2, 1], 10)}"













# require 'spec_helper'

# describe Gravatar do
#   context 'given an email' do
#     let(:gravatar) { Gravatar.new("HELLO@example.com  ") }
#     it 'should generate the hash that gravatar needs' do
#       gravatar.hash.should == "cb8419c1d471d55fbca0d63d1fb2b6ac"
#     end

#     it 'should generate the url that will get the gravatar' do
#       gravatar.url.should == "http://www.gravatar.com/avatar/cb8419c1d471d55fbca0d63d1fb2b6ac?d=retro&s=134"
#     end
#   end
# end