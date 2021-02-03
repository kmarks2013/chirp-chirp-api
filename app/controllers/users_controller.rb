class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def create
        user = User.create(user_params)
        byebug
        if user.valid?
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :username)
    end

end
