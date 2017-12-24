require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'json'
require 'http'
require_relative './models/neo.rb'
require_relative './controllers/neos_controller.rb'
require_relative './controllers/api/api_neos_controller.rb'

use Rack::MethodOverride

run Rack::Cascade.new([
  NeosController,
  ApiNeosController
])
