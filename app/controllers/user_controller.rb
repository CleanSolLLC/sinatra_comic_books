class UserController < ApplicationController

  get "/registrations/signup" do
	erb :"registrations/signup"
  end

   get "/sessions/login" do
  	erb :"sessions/login"
  end

  post "/login" do
  	if user_persists?
  		redirect "/comic"
  	else
      redirect "/registrations/signup", flash[:error] = "User does not exist please sign up"  
  	end
  end


  post "/signup" do
    if user_persists?
      redirect "/registrations/signup", flash[:error] = "User account already exists please sign up for a new account"
    else
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect "/comic"
      else
        signup_error
      end
    end
  end

  get "/logout" do
    session.clear
    redirect "/"
  end


private
  def user_params
  	{username: params[:username], email: params[:email], password: params[:password]}
  end
end