require 'sinatra'
require_relative 'coinchanger.rb'

get '/' do
    erb :home
end

