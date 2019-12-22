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

  get "/" do
  	erb :home
  end 

  helpers do

    def is_logged_in?
     #!!session[:user_id]
      !!current_user 
    end

    def current_user
      @current_user ||= User.find_by(:id => session[:user_id]) if session[:user_id]
    end

    def redirect_if_not_logged_in
      if !is_logged_in?
        redirect "/sessions/login", flash[:error] = "user is not logged in" 
      end 
    end

    def view_update_authorized?
      if current_user.comics.find_by(:id => params[:id])  
        @comic = current_user.comics.find_by(:id => params[:id])
      end
    end

    def user_persists?
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
      end
    end

    def signup_error
      errors = @user.errors.messages
      i=0
      errors.each_pair do |k,v|
        flash[:error[i]] = "#{k.to_s} #{v.join}"
        i+=1
      end
      redirect "registrations/signup"
    end 
  end
end

#use controller to hold info that is relevent to all controllers
#session management, authorization