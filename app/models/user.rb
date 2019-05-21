class User < ApplicationRecord
    validates :name, :email, :username, presence: :true
    
    has_secure_password
end
