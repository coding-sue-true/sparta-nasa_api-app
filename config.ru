require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'json'
require 'http'
require_relative './app/models/neo.rb'
require_relative './app/controllers/neos_controller.rb'
require_relative './app/controllers/api/api_neos_controller.rb'

use Rack::MethodOverride

run Rack::Cascade.new([
  NeosController,
  ApiNeosController
])
