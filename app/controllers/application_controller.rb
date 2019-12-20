class ApplicationController < Sinatra::Base
  require 'sinatra/base'
  require 'sinatra/flash'
  require 'rack-flash'
  require 'sinatra/redirect_with_flash'

  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    use Rack::Flash, :sweep => true
    register Sinatra::Flash
    register Sinatra::RedirectWithFlash
    set :session_secret, 'mission_impossible'

    
  end

  get '/' do
  	erb :home
  end  

  get '/users' do
    erb :'/users/home'
  end
end

#use controller to hold info that is relevent to all controllers
#session management, authorization