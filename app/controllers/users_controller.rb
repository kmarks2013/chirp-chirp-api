class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    private
    def user_params
        params.permit(:email, :password, :username)
    end

end
