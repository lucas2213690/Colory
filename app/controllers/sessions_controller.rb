class SessionsController < ApplicationController
	def new
  	end

	def create
    #authenticity_token or session
		#user = User.find_by_email(params[:session][:email])
		user = User.find_by(email: params[:session][:email].downcase)
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:session][:password])

      log_in user
      #redirect_to user

      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      #session[:user_id] = user.id
      
      redirect_to '/sistema'
      #flash[:success] = "Welcome to the Sample App!"
      #redirect_to :controller => 'startup', :action => 'index'
  else
    # If user's login doesn't work, send them back to the login form.
    #flash[:danger] = 'Email ou Senha invalidos'
    #redirect_to '/login'
    render 'new'
end
end

def destroy
    log_out
    redirect_to login_path
  end
end
