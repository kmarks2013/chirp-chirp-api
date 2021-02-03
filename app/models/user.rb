class User < ApplicationRecord
    # email validations
    validates_presence_of :email

    # username validations
    validates_presence_of :username

    # password validations
    has_secure_password

end
