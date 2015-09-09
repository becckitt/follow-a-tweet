class Tweet < ActiveRecord::Base

	attr_reader :search_term

	def initialize(search_term)
		@search_term = search_term
	end

	def get_search
		TWITTER.search(search_term).collect do |tweet|
			tweet.user
		end.take(5)
	end

	def get_all_tweets(search_term)
		search_term = "Twitter"
		FetchTweets.new(search_term)
	end
	
end
