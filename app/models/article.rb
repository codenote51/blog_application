class Article < ApplicationRecord
  has_many :comments
  validates_associated :comments
  validates :title, presence: true
  validates :body, presence: true
  validates :number, numericality: true
end
