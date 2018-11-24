require 'news-api'

class ArticleController < ApplicationController
  def headlines
    @newsapi = News.new(ENV['NEWS_API_KEY'])
    @headlines = @newsapi.get_top_headlines(country: 'in')
  end
end
