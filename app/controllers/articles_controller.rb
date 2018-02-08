class ArticlesController < ApplicationController
  def index
    search_term = params[:search]
    @articles = Unirest.get("https://newsapi.org/v2/everything?q=#{search_term}&apiKey=#{ENV[NEWSAPI_API_KEY]}").body
    render json: @articles 
  end 
end
