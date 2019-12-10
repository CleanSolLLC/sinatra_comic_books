class ErrorHandling < Sinatra::Base

  get '/errors' do
	"this is definitely an error"
  end
end