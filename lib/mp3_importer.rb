class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    total_files = Dir.entries(@path)
    puts total_files
  end

end
