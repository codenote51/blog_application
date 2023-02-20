class Order < ApplicationRecord
  validates :name, presence: true
  validates :lastname,  presence: true
  validates :email,  confirmation: true
end

