require 'sinatra/base'
require 'sinatra/partial'
require 'sinatra/reloader'
require 'sinatra/tags'

class App < Sinatra::Base

  configure do
    register Sinatra::Reloader
    register Sinatra::Partial
    register Sinatra::Tags
    enable :partial_underscores
    set :partial_template_engine, :erb
  end

  get '/' do
    erb :home
  end

  get '/about' do
    erb :about
  end

  get '/contacts' do
    erb :contacts
  end

  get '/works' do
    erb :works
  end
end


