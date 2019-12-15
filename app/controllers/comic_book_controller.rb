class ComicBookController < ApplicationController

  get "/comic" do
    @comics = Comic.all
    erb :"/comics/index"
  end

   get "/comic/new" do
  	erb :"/comics/new"
  end

  post "/comic" do
    comic = Comic.new(user_params)
    if comic.save
      redirect "/comic"
    else
      @error = "error encountered could not commit to database"
      erb :error
    end
  end

  get "/comic/:id" do
    @comic = Comic.find(params[:id])
    erb :"/comics/show"
  end

  get "/comic/:id/edit" do
    @comic = Comic.find(params[:id])
    erb :"/comics/edit"
  end

  patch "/comic/:id" do
    @comic = Comic.find(params[:id])
    @comic.publisher = params[:publisher]
    @comic.year = params[:year]
    @comic.issue_num = params[:issue_num]
    @comic.cover_price = params[:cover_price]
    @comic.title = params[:title]
    @comic.subtitle = params[:subtitle]
    @comic.condition = params[:condition]
    @comic.html_link_to_dealer = params[:html_link_to_dealer]
    @comic.save
    redirect "/comic/#{@comic.id}"
  end


  
  private
  def user_params
  	{publisher: params[:publisher], year: params[:year],
     issue_num: params[:issue_num], cover_price: params[:cover_price],
     title: params[:title], subtitle: params[:subtitle],
     condition: params[:condition], html_link_to_dealer: params[:html_link_to_dealer]}
  end
end