require 'rubygems'
require 'sinatra'

# Stick a user-chosen word into a famously ridiculous sentence. 
def yodawg(noun, verb=nil)
	if !verb
		verb=noun
	end
	"Yo dawg, I heard you liked #{noun}, so I put a #{noun} in your #{noun} so you can #{verb} while you #{verb}!"
end


get "/" do
	"Here's a little Ruby app I wrote to amuse myself and learn something at the same time. <br /> 
If you want to play around with it, just add one or two words to the URL. <br />
If you have two words, separate them with a slash, \"apples/eat\". <br /><br />
So if you typed in \"yodawg.heroku.com/shit\" you'd get: " + yodawg("shit") + "<br /><br /> And if you typed in \"yodawg.heroku.com/fancy/pants\" you'd get: " + yodawg("fancy", "pants") 
end

get "/:noun/?" do |n|
	yodawg(n) + "<br /><br /><br /><br /><a href=\"/\">Yo dawg, I heard you liked instructions...</a>"
end

get "/:noun/:verb/?" do |n, v|
	yodawg(n, v) + "<br /><br /><br /><br /><a href=\"/\">Yo dawg, I heard you liked instructions...</a>"

end
