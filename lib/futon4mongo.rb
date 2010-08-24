require "rubygems"
require "sinatra"
require "net/http"
require "yajl"
require 'yajl/json_gem'
require "pp"
require "mongo"
require "uri"
require "cgi"

require 'futon4mongo/app'

module Futon4Mongo
  def self.app
    Futon4Mongo::App
  end
end
