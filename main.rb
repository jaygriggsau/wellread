     
require 'sinatra'
require 'dotenv/load'
require 'sinatra'
require 'puma'
require 'pg'
require 'bcrypt'
require 'httparty'
require 'dotenv'

enable :sessions

require './DB/db'

require './controllers/books_controller'
require './controllers/sessions_controller'
require './controllers/users_controllers'

require './helpers/sessions_helper'





