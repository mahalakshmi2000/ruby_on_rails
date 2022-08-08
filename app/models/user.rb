class User < ApplicationRecord
    has_secure_password
    # has_many :adds

    # validates :user_name, presence: true, length: { minimum: 3, maximum: 16 }, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ }
    # validates :phone_number, presence: true, length: {minimum: 10, maximum: 10}
    # validates :email, presence: true, length: { minimum: 10, maximum: 255 }, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }, uniqueness: { case_senitive: false }
    # validates :password, presence: true, length: { minimum: 7, maximum: 255 }, confirmation: true 
    # validates :password_confirmation, presence: true
end
