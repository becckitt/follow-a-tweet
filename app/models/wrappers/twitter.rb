class fetchTweets
	attr_reader :search_term

	def initialize(search_term)
		@search_term = search_term
	end

	TWITTER = Twitter::REST::Client.new do |config|
		
	end

	def get_search
		TWITTER.search(search_term).collect do |tweet|
			tweet.user
		end
	end



end