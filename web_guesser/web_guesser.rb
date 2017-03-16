require "sinatra"
require "sinatra/reloader"
SECRET_NUM = rand(100)
get "/" do 
	user_input = params["guess"].to_i
	message = check_guess(user_input)
	erb(:index,:locals => {number: SECRET_NUM, message: message})
end 	 	
def check_guess(input)
	if input == SECRET_NUM
		"correctika. The secret number is #{input}"
	elsif input > SECRET_NUM + 5
		"way too high"
	elsif input > SECRET_NUM 
		"too high"
	elsif input < SECRET_NUM - 5
		"way too low"
	elsif input < SECRET_NUM 
		"too low"
	end
end