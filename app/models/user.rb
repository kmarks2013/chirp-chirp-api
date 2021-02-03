class User < ApplicationRecord
    # email validations
    validates_presence_of :email
    validates_uniqueness_of :email, :case_sensitive => false

    # username validations
    validates_presence_of :username
    validates_uniqueness_of :username, :case_sensitive => false
    validates :username, :length => { :in => 5..30}

    # password validations
    has_secure_password
    validates :password, :length => { :minimum => 6 }

end
