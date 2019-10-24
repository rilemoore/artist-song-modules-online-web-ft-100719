require 'pry'
 require_relative '../lib/concerns/memorable'
class Song
  attr_accessor :name
  attr_reader :artist
  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  @@all = []

  

  # def initialize
  #   self.class.all << self
  # end

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

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
