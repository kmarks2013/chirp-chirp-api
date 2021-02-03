class User < ApplicationRecord
    # email validations
    validates_presence_of :email


    # password validations
    has_secure_password

end
