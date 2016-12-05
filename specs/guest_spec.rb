require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestSpec < MiniTest::Test
  def test_guest_has_name
    guest = Guest.new("Dave", 2 )
    assert_equal("Dave", guest.name)
  end

  def test_guest_has_room
    guest = Guest.new("Dave", 2 )
    assert_equal(2, guest.room)
  end

  

end
