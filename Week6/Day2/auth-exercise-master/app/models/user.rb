class User < ActiveRecord::Base
  has_secure_password
  # has_secure_password automates password_confirmation
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
end
