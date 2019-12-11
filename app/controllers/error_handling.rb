class ErrorHandling < ApplicationController

  get '/errors' do
	erb :error
  end
end