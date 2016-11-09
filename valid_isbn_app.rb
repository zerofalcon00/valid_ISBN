require "sinatra"
require_relative "marv_code.rb"

get "/" do
	erb :ask_isbn, :locals => {:message => ""}
end
	
post "/ask_isbn" do
	isbn = params[:isbn]
	returned_result = valid_isbn_10_or_13(isbn)
	if returned_result == true
		returned_result = "valid"
	else returned_result == false
		returned_result = "not valid"
	end

	message = "Your #{isbn} is #{returned_result}."
	
	erb :ask_isbn, :locals => {:message => message }

end