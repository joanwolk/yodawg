require 'rubygems'
require 'sinatra'
require 'linguistics'
Linguistics::use( :en )

# Stick a user-chosen word into a famously ridiculous sentence. 
def yodawg(noun, verb=nil)
	if !verb
		verb=noun
	end
	"Yo dawg, I heard you liked #{noun.en.plural}, so I put #{noun.en.a} in your #{noun} so you can #{verb} while you #{verb}!"
end


get "/" do
	"Here's a little Ruby app I wrote to amuse myself and learn something at the same time. <br /> 
If you want to play around with it, just add one or two words to the URL. <br />
If you have two words, separate them with a slash, \"apple/eat\". <br /><br />
So if you typed in \"yodawg.heroku.com/dance\" you'd get: " + 
yodawg("dance") + 
"<br /><br /> And if you typed in \"yodawg.heroku.com/fancy/pants\" you'd get: " + 
yodawg("fancy", "pants") 
end

get "/:noun/?" do |n|
	yodawg(n) + "<br /><br /><br /><br /><a href=\"/\">Yo dawg, I heard you liked instructions...</a>"
end

get "/:noun/:verb/?" do |n, v|
	yodawg(n, v) + "<br /><br /><br /><br /><a href=\"/\">Yo dawg, I heard you liked instructions...</a>"

end
