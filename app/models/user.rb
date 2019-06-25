class User < ApplicationRecord
    validates :name, :email, :username, presence: :true
    validates :name, :username, length: { minimum: 5, maximum: 30 }
    PASSWORD_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: :true, length: { minimum: 5, maximum: 100},
                         uniqueness: { case_sensitive: false },
                         format: { with: PASSWORD_REGEX }
                         
                        
                         
    
    
    has_secure_password
end
