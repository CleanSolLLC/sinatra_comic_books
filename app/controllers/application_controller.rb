#require_relative './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "mission_impossible"
  end

  get '/' do
  	"Hello World"
  end

end
