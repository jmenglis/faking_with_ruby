class Movie
  attr_accessor :title, :director, :plot, :url
  require 'json'
  require 'httparty'
  # 1. have a constructor that accepts a URL for OMDB
  # 2 The constructor should then use HTTParty.get to get the data
  # 3 You will then SET instance variables for @title @director @plot
  # 4. Implement a to_s, to_hash, to_json
  # 5 self.method_name == this.methodName() in JS

  def initialize(url)
    @url = HTTParty.get(url)
    @title = @url['Title']
    @director = @url['Director']
    @plot = @url['Plot']
  end

  def to_s
    return "#{@title}, #{@director}, #{@plot}"
  end
  def to_hash
    return {
      :title => @title,
      :director => @director,
      :plot => @plot
    }
  end
  def to_json
    self.to_hash.to_json
  end
end


fetcher = Object.new


def fetcher.set_url(url_to_api)
  # this.url = url_to_api
  @url = url_to_api
  return @url
end

def fetcher.get_url
  return @url
end

def fetcher.get_data
  Movie.new(@url)
end

