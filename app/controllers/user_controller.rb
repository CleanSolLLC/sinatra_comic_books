class UserController < ApplicationController

  get '/signup' do
	erb :'registrations/signup'
  end
end