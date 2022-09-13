     
require 'sinatra'
require 'dotenv/load'
require 'sinatra'
require 'puma'
require 'pg'
require 'bcrypt'
require 'httparty'
require 'dotenv'

get '/' do
  erb :index
end





