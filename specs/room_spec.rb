require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')

class RoomSpec < MiniTest::Test

  def test_room_has_number
    room = Room.new(2) #guests and song_queue is private these parameters are passed
    assert_equal(2, room.number)
  end

  def test_room_has_empty_song_queue
    room = Room.new(2)
    song = Song.new("White Lines", "The Sugarhill Gang")
    assert_equal(0, room.song_queue.count())
  end

  def test_room_can_add_song
    room = Room.new(2)
    song = Song.new("White Lines", "The Sugarhill Gang")
    room.add_song(song)
    assert_equal(1, room.song_queue.count())
  end

  def test_room_empty
    room = Room.new(2)
    assert_equal(0, room.count_guests())
  end

  def test_room_check_in
   room = Room.new(2)
   guest = Guest.new("Dave", 2)
   room.add_guest(guest)
   assert_equal(1, room.count_guests())
 end

 def test_room_capacity
   room = Room.new(2)
   guest = Guest.new("Dave", 2)
   room.add_guest(guest)
   room.add_guest(guest)
   room.add_guest(guest)
   room.add_guest(guest)


   assert_equal("Room is full", room.add_guest(guest))

 end



 def test_room_check_out
  room = Room.new(2)
  guest = Guest.new("Dave", 2)
  room.add_guest(guest)
  guest = Guest.new("Harrison", 2)
  room.add_guest(guest)
  room.remove_guest()
  assert_equal(1, room.count_guests())
end

end
