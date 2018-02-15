class HomePagesController < ApplicationController

  def home
  	@tweet = Tweet.new
  end

  def create
  	@tweet = Tweet.new
  	if @tweet.save
  	   SendTweet.new("Bonjour monde!").perform
  	    redirect_to root_path
      else
        render 'home'
      end
  end
  
end
