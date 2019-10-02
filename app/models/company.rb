class Company < ApplicationRecord
    validates :name, :email, :description, :phone, :year_established, presence: :true
    validates :description, length: { minimum: 10, maximum: 100 }
    PASSWORD_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: :true, length: { minimum: 5, maximum: 100},
                         uniqueness: { case_sensitive: false },
                         format: { with: PASSWORD_REGEX }
    belongs_to :service
end
