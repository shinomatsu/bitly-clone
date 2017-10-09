require 'uri'

class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!

	validates :original_url, presence: true
	validates :original_url, uniqueness: {case_sensitive: false, message: "was shortened before"}
	validates :original_url, format: {with: (URI::regexp(['http', 'https'])), message: "format is not good"}
	
	def shorten
		new_array =[]
		new_array << ((0..9).to_a + ("a".."z").to_a + ("A".."Z").to_a).sample(6)
		self.new_url = new_array.join
		self.save

	end
end
