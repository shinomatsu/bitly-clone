
# #get <route-name> do
# #end

# #GET/POST


get '/' do	
	#puts "[LOG] Gettig /"
	#puts "[LOG] Params:#{params.inspect}"
	erb:"static/index"

end

get '/about' do

	erb:"static/about"
end

post "/urls" do

	@url = Url.new(original_url: params["original_url"])
	

	
	if @url.save
		#once i call @url.save,, it will then go to app/models/url.rb and run all the validation tests, only if it passes all the validation test, then @url.save will return true, if it fails one or more validation test, then @url.save will return false
		@url.shorten
		# @messages = "success"
		# return @url.to_json #convert the return ourl object to json type
	else 		
		@messages = @url.errors.full_messages.join(", ")
			# return @messages.to_json 
	end
			

	erb:"static/index"

end

get '/:new_url' do

	a = Url.find_by(new_url: params["new_url"])
	# .pluck(:original_url)
	# @original_url = a.join
	if a
		redirect a.original_url
	else
		redirect '/'
	end
#redirect 'https://www.amazon.co.jp/'
end