class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_name = filename.split(/\s-\s|\.mp3/)
    song = self.new(split_name[1])
    song
  end

end
