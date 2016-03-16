# require the bundler library
require 'bundler'
Bundler.require

require './user' # laod the user.rb file

test_user = User.new # instatiate a new copy of User
p test_user.to_s

