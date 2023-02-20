class Customer < ApplicationRecord
  include Visible
  belongs_to :order
end
