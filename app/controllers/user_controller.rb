require 'byebug'
require 'pry'
class UserController < ApplicationController

  get '/signup' do
	erb :'registrations/signup'
  end

  post '/registrations' do
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect 'users/home'
    else
    	@error = 'error encountered'
    	erb :error
    end
  end

  get '/sessions' do
  	user[:session] = @user.id
  end
  
  private
  def user_params
  	{username: params[:username], email: params[:email], password: params[:password]}
  end
end