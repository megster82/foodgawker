require 'open-uri'
require 'nokogiri'
require 'pry' #will need to take out later
#requiring your version
require_relative './foodgawker/version'

#defining your namespace
# module Foodgawker
#   class Error < StandardError; end
#   # Your code goes here...
# end
require_relative './foodgawker/recipe'
#require rest of your files
require_relative './foodgawker/cli'
