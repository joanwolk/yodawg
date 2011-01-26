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
	yodawg("shit")
end

get "/:noun" do |n|
	yodawg(n)
end

get "/:noun/:verb" do |n, v|
	yodawg(n, v)
end
