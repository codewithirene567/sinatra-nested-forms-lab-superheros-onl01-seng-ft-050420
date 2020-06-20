require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team][:name], motto: params[:team][:motto])

   heros = params[:team][:hero]

    heros.each do |params|
      Hero.new({name: params[:name], power: params[:power], bio: params[:bio]})
    end
    @heros = Hero.all
  erb :team
  end

end
