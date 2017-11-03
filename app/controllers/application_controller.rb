require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team = Team.new(params[:team]).save

      params[:team][:superheros].each do |stats|
        s = Superhero.new(stats).save
        s.team = @team
      end

      @superheros = Superhero.all

      erb :team
    end
end
