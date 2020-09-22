require 'pry'
class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end


    def files
        Dir.children(@path)
    end

    def import 
        files.map{|file_name| Song.new_by_filename(file_name)}
    end

    
end