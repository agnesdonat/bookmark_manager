require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    @links = [
      "http://www.makersacademy.com",
      "http://www.zoobudapest.com/en",
      "http://www.shakespearesglobe.com/"
    ]

    erb :index
  end

  run! if app_file == $0
end
