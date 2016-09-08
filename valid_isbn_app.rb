require "sinatra"
require_relative "marv_code.rb"

get "/" do
	erb :ask_isbn
end
	
post "/ask_isbn" do
	isbn = params[:isbn]
	returned_result = valid_isbn_10_or_13(isbn)
	if returned_result == true
		returned_result = "valid"
	else returned_result == false
		returned_result = "not valid"
	end
	"You ISBN number is #{returned_result}"

end