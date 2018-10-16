require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions, 
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session["item"] = @item

    @item = params[:item]

    erb :checkout
  end
end
