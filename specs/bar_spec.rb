require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')

class BarSpec < MiniTest::Test

def test_add_room
  bar = Bar.new
  bar.add_room()
  assert_equal(6, bar.rooms.count())
end


end
