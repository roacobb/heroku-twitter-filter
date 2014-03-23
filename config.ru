$:.unshift File.expand_path("../", __FILE__)
require 'rubygems'
require 'sinatra'
require 'thin'
require 'tweetstream'
require './tweetstream'
run Sinatra::Application
