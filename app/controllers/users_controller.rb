class UsersController < ApplicationController
	def new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = user.id
			#flash[:notice] = "Usuário criado com sucesso"
            #flash[:color] = "Válido"
            flash[:success] = "Welcome to the Sample App!"

			redirect_to @user

		else
			flash.now[:danger] = 'Campos Invalidos'
			render 'new'
		end
	end
	private
	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end

