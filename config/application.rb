require 'pry'
require 'mongoid'
require 'require_all'
require 'json'
require 'nokogiri'
require 'open-uri'
require 'net/http'


require_all 'config'
require_all 'lib'

# entity = Model::Entity::Micex.last
# browser = Browser::BrowserFactory.for(entity)
# browser.process
