require 'pry-nav'
require 'byebug'
class ComicBookController < ApplicationController

  get "/comics" do
    redirect_if_not_logged_in
    @comics = @current_user.comics
    erb :"comics/index"
  end

   get "/comics/new" do
    redirect_if_not_logged_in
  	erb :"/comics/new"
  end

  post "/comics" do
    redirect_if_not_logged_in
    #check to see if comic persists in the database
    if !comic_persists?
      comic = Comic.new(user_params)
      if comic.save
        redirect "/comics"
      else
        redirect_if_not_logged_in
      end
    else
      redirect "/comics", flash[:error] = "You have added this comic to your colletion already"
    end
  end

  get "/comics/:id" do
    redirect_if_not_logged_in
    if user_view_update_authorized?
      erb :"/comics/show"
    else
      redirect "/comics"
    end  
  end

  get "/comics/:id/edit" do
    redirect_if_not_logged_in
    if user_view_update_authorized?
      erb :"/comics/edit"
    else
      redirect "/comics"
    end
  end

  patch "/comics/:id" do
    redirect_if_not_logged_in
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
    redirect "/comics/#{@comic.id}"
  end

  get "/comics/:id/delete" do
    redirect_if_not_logged_in
    if user_view_update_authorized?
      @comic.delete
    end
      redirect to '/comics'
  end

  private
  def user_params
  	{publisher: params[:publisher], year: params[:year],
     issue_num: params[:issue_num], cover_price: params[:cover_price],
     title: params[:title], subtitle: params[:subtitle],
     condition: params[:condition], html_link_to_dealer: params[:html_link_to_dealer], :user_id => session[:user_id]}
  end
end