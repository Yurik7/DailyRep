require 'pry'
require 'mongoid'


$LOAD_PATH.unshift("#{File.dirname(__FILE__)}")

require 'environment'
require 'boot'

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/..")


Dir["dailyrep/*.rb"].each {|file| require file }
Dir["dailyrep/model/*.rb"].each {|file| require file }
