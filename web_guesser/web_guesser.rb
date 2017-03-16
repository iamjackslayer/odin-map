require "sinatra"
require "sinatra/reloader"
@@secret_num = rand(100)
color = nil
@@count = 5
get "/" do 
	
	user_input = params["guess"].to_i
	@@cheat_input = params["cheat"]
	@@message = check_guess(user_input)
	check_count
	erb(:index,:locals => {number: @@secret_num, message: @@message,color:color,user_input: user_input})
end 	 	
def check_guess(input)
	if @@cheat_input == "true"
		return "The secret is #{@@secret_num}. Number of guesses left: #{@@count}"
	end
	if input == @@secret_num
		@@count = 5
		@@secret_num = rand(100)
		return "correctika. The secret number is #{input}. New secret number generated."
	elsif input > @@secret_num + 5
		return "way too high. number of guesses left: #{@@count}"
	elsif input > @@secret_num 
		return "too high. number of guesses left: #{@@count}"
	elsif input < @@secret_num - 5

		return "way too low. number of guesses left: #{@@count}"

	elsif input < @@secret_num 
		return "too low. number of guesses left: #{@@count}"
	end
end
def check_count
	@@count -= 1
	if @@count == 0
		@@count = 5
		@@message = "You have lost. New secret number generated. It was #{@@secret_num}."
		@@secret_num = rand(100)
	end
end