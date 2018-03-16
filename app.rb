require 'sinatra/base'
require './lib/link'
require './lib/db_connection_setup'
require 'sinatra/flash'


class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    @links = Link.all
    erb :index
  end

  post '/new_link' do
    if Link.good_link?(params[:url])
      Link.add(params[:url])      
    else
      flash[:notice] = "Please add a valid link"
    end
    redirect('/')
  end

  run! if app_file == $0
end
