require 'pry'
 require_relative '../lib/concerns/memorable'
class Artist
  attr_accessor :name
  attr_reader :songs
  
  extend Memorable
  include Findable
  @@all = []

  def initialize
    @@all << self
    @songs = []
  end

  # def self.find_by_name(name)
  #   @@all.detect{|a| a.name == name}
  # end

  def self.all
    @@all
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
