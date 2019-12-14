class ComicBookController < ApplicationController

  get "/comics" do
    @comic = Comic.all
    erb :"/comics/index"
  end

   get "/comics/new" do
  	erb :"/comics/new"
  end

  post "/comics" do
    comic = Comic.new(user_params)
    if comic.save
      redirect "/comics"
    else
      @error = "error encountered could not commit to database"
      erb :error
    end
  end
  
  private
  def user_params
  	{publisher: params[:publisher], year: params[:year],
     issue_num: params[:issue_num], cover_price: params[:cover_price],
     title: params[:title], subtitle: params[:subtitle],
     content: params[:content]}
  end
end