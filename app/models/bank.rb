class Bank < ApplicationRecord
  has_many :transactions
  validates :name, :lastname, presence: true
  validates :email,  presence: true, uniqueness: true
  validates :city, presence: true
  validates :pin, numericality: true
  validates :age, numericality: true
end
