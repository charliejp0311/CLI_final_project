require "pry"
class Post
  attr_accessor :author, :title
  @@all = []
  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author
        @author.name
    else
      nil
    end

  end

end