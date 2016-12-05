require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongSpec < MiniTest::Test
  def test_song_has_name
    song = Song.new("White Lines", "The Sugarhill Gang" )
    assert_equal("White Lines", song.name)
  end

  def test_song_has_artist
    song = Song.new("White Lines", "The Sugarhill Gang" )
    assert_equal("The Sugarhill Gang", song.artist)
  end

end
