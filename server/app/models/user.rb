# app/models/user.rb
class User < ApplicationRecord
    has_secure_password # This will handle password encryption and authentication
  
    has_many :projects, foreign_key: 'owner_id'
    has_many :contributions
    has_many :comments
  
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }, if: :password_digest_changed?
    validates :password_confirmation, presence: true, if: :password_digest_changed?
  
  end
  
