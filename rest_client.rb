require 'rest-client'
print "Enter a website: "
website = gets.chomp
if website =~ /^http:\/\/|^https:\/\// 
	website = website
elsif website =~ /^www/
	website = "http://" + website
else 
	website = "http://www." + website
end

response = RestClient.get(website)
puts "Response code: " + response.code.to_s
puts "Response cookies: " + response.cookies.to_s
puts "Response headers: " + response.headers.to_s
puts "Response body: " + response.body.to_s
