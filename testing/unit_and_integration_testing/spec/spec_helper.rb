require 'json'
require 'httparty'
require 'rspec'
require 'rack/test'
require 'pg'
require_relative '../lib/neoapi'
require_relative '../../../app/models/neo.rb'
require_relative '../../../app/controllers/articles_controller.rb'
require_relative '../../../app/controllers/api/neos_api_controller.rb'


RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
