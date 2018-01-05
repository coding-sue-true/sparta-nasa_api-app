require 'json'
require 'httparty'
require 'rspec'
require 'rack/test'
require 'pg'
require_relative '../lib/neoapi'


RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
