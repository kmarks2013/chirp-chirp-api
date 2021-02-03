class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def create
        user = User.create()
    end

    private
    def user_params
        params.require(:user).parmas.permit(:username, :email, :password)
    end

end
