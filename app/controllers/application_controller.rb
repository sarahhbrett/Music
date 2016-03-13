class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  include ApplicationHelper
  
  def authorise 
	unless signed_in?
		store_location
		redirect_to login_path, :notice => "Please sign in to access this page."
	end
  end 

private
	 def store_location
		session[:return_to] = request.fullpath
	 end
end	

  def search
		@modelnames = Modelname.search params[:query]
	unless @modelnames.empty? #if !@modelnames.empty?
		render 'index' #will only show records matching the search
	else
		flash[:notice] = 'No record matches that search, sorry.'
		render 'index' #will show all records
	end
	end