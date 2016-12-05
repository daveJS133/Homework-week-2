

class Bar
attr_reader :rooms

def initialize()
@rooms = [1, 2, 3, 4, 5]

end

def add_room
  number = @rooms.index(@rooms.last()) + 1
  @rooms.push(number)
  return @rooms
end


end
