require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:superheros].each do |stats|
        Superhero.new(stats)
      end

      @superheros = Superhero.all

      erb :team
    end
end
