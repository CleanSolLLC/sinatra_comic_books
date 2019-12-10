class ErrorHandling < ApplicationController

  get '/errors' do
	erb :errors
  end
end