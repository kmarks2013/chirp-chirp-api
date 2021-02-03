class AuthController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        # add a way to log in with email as well
        is_authenticated = user.authenticate(params[:password])
        if is_authenticated
            render json: {token: encode_token(user_payload(user))}
        else
            render json: {error: "Wrong username/password. Please try Again"}
        end
    end

end
