class ApplicationController < ActionController::API

    def user_payload(user)
        {user_id: user.id}
    end

    def hmac_secret
        ENV["JWT_SECRET_KEY"]
    end

end
