require 'pry'
require 'mongoid'


$LOAD_PATH.unshift("#{File.dirname(__FILE__)}")

require 'environment'
require 'boot'

Dir['lib/dailyrep/*.rb'].each { |file| load file }
Dir['lib/dailyrep/model/*.rb'].each { |file| load file }
Dir['lib/dailyrep/model/entity/*.rb'].each { |file| load file }

binding.pry