class User < ApplicationRecord
  belongs_to :country
  #before_save { self.email = email.downcase }
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
