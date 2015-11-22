require "sinatra"
require "pry"
require_relative "app/models/game_logic.rb"

set :views, File.join(File.dirname(__FILE__), "app/views")

use Rack::Session::Cookie, {
  secret: "keep_it_secret_keep_it_safe"
}

get '/' do
  if session[:visit_count].nil?
    session[:visit_count] = 1
    session[:player_score] = 0
    session[:computer_score] = 0
  end
  @player_score = session[:player_score]
  @computer_score = session[:computer_score]
  @game_status = session[:game_status]
  @winner = session[:winner]
  @player_hand = session[:player_hand]
  @computer_hand = session[:computer_hand]
  erb :game
end

post '/' do
  session[:player_hand] = params.values[0]
  game = GameLogic.new(session[:player_hand])
  session[:computer_hand] = game.computer_hand
  session[:winner] = game.choose_winner
  if session[:winner] == 1
    session[:player_score] += 1
  elsif session[:winner] == 2
    session[:computer_score] += 1
  end
  session[:game_status] = game.choose_game_winner(session[:computer_score], session[:player_score])
  redirect '/'
end

get '/reset' do
  session.clear
  redirect '/'
end
