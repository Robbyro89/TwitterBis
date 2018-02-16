class TweetsController < ApplicationController

  def index
  	@tweets = Tweet.all
  end

  def new
  	@tweet = Tweet.new
  end


  def create
  	@tweet = Tweet.new(tweet_params)
  	if @tweet.save
    	SendTweet.new(@tweet.content).perform
    	redirect_to root_path
    else
      render 'home'
    end
  end

  private
  def tweet_params
      params.require(:tweet).permit(:content)
  end

end
