class TwitterWrapper
	attr_accessor :client

	def initialize
		@client = client
	end

	def client
		Twitter::REST::Client.new do |config|
			config.consumer_key = ENV["consumer_key"]
	  		config.consumer_secret = ENV["consumer_secret"]
	  		config.access_token = ENV["access_token"]
	  		config.access_token_secret = ENV["access_token_secret"]
		end
	end

	def get_search(search_term)
		Client.search(search_term).collect do |tweet|
			tweet
		end
	end

	def get_all_tweets(search_term)
		get_search(search_term)
	end
end