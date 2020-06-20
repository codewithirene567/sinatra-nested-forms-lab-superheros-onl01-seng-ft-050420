require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team][:name], motto: params[:team][:motto])

   heros = params[:team][:heros]
   
    heros.each do |attributes|
      Hero.new(attributes)
    end
    @heros = Hero.all
  erb :teams
  end

end
