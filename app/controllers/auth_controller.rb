class AuthController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        # add a way to log in with email as well
        is_authenticated = user.authenticate(params[:password])
        if is_authenticated
            payload = {user_id: user.id}
            token = JWT.encode(payload, 'examplesecretkey', 'HS256')
            render json: {token: token}
        else
            render json: {error: "Wrong username/password. Please try Again"}
        end
    end

end
