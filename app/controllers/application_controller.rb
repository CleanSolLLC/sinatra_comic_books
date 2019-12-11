class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, 'mission_impossible'
  end

  get '/' do
  	erb :home
  end

  get '/registrations/signup' do
  	erb :'registrations/signup'
  end
  
end
