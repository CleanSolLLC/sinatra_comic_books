class UserController < ApplicationController

  get '/registrations/signup' do
	erb :'registrations/signup'
  end

   get '/sessions/login' do
  	erb :'sessions/login'
  end

  post '/login' do
  	user = User.find_by(email: params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = @user.id if !is_logged_in?(session)
  		redirect "/users/home"
  	else
    	@error = 'Invalid user name or password'
    	erb :error

  	end
  end


  post '/signup' do
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect "/comic"
    else
    	@error = 'error encountered could not commit to database'
    	erb :error
    end
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

  get '/users/home' do

    @user = User.find(session[:user_id])

    erb :'/users/home'
  end
  
  private
  def user_params
  	{username: params[:username], email: params[:email], password: params[:password]}
  end

  def current_user(session)
    User.find(session[:user_id])
  end

  def is_logged_in?(session)
    !!session[:user_id]
  end 

end