require 'sinatra/base'
require './lib/link'
require './lib/db_connection_setup'

class BookmarkManager < Sinatra::Base

  get '/' do
    @links = Link.all
    erb :index
  end

  post '/new_link' do
    @name = Link.add(params[:url])
    redirect('/')
  end

  run! if app_file == $0
end
