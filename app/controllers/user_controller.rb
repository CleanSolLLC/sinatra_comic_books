class UserController < ApplicationController

  get "/registrations/signup" do
	erb :"registrations/signup"
  end

   get "/sessions/login" do
  	erb :"sessions/login"
  end

  post "/login" do
  	if user_persists
  		redirect "/comic"
  	else
      redirect "/registrations/signup", flash[:error] = "User does not exist please sign up"  
  	end
  end


  post "/signup" do
    #make sure user is not persisted in database
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect "/comic"
    else
    	@error = "error encountered could not commit to database"
    	erb :error
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