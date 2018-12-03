require 'sinatra'
require_relative 'coinchanger.rb'

get '/' do
    erb :home
end

post '/home' do
    coins = params[:coins]
    redirect 'results?coins=' + coins
end

get '/results' do
    coins = params[:coins]
    result = coin_counter(coins.to_i)
    erb :results, locals: {coins: coins, result: result}
end