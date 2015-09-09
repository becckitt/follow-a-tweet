class fetchTweets
	attr_reader :search_term

	def initialize(search_term)
		@search_term = search_term
	end

	TWITTER = Twitter::REST::Client.new do |config|
		config.consumer_key = ENV["consumer_key"]
  		config.consumer_secret = ENV["consumer_secret"]
  		config.access_token = ENV["access_token"]
  		config.access_token_secret = ENV["access_token_secret"]
	end

	def get_search
		TWITTER.search(search_term).collect do |tweet|
			tweet.user
		end
	end



end