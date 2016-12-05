
require_relative('song.rb')
require_relative('guest.rb')
require_relative('bar.rb')

class Room

attr_reader :number #number should be public

def initialize(number)  #guests and song_queue is private so these parameters are passed
  @number = number
  @song_queue = []
  @guests = []
  @price = 50
end

def guests
  return @guests
end


def song_queue()
  return @song_queue
end

def count_guests()
  return @guests.count()
end

def add_song(song)
  @song_queue.push(song)
end

def add_guest(guest)

  if count_guests() < 4
    @guests.push(guest)
    
  else
    return "Room is full"
  end
end

def remove_guest
  @guests.pop()
  return @guests

end



end
