class Order < ApplicationRecord
  validates :name,  presence: true, length: { minimum: 3 }
  validates :lastname, presence: true 
  validates :email, presence: true

   #after_touch :log_when_book_or_order_touched
end

  #before_save :name,  if: Proc.new { name? }
  #if: Proc.new { |order| orde.name? }

   #before_create do 
    #self.name = login.capitalize if name.blank?
  #end

   #before_validation :ensure_login_has_a_value
  #unless: Proc.new { |a| a.email.blank? }
  #unless: -> { email.blank? } 

  #private
  #def  ensure_login_has_a_value
    #if login.nill?
      #self.login = email unless email.blank?   
   # end
  #end

  #after_initialize do |order|
    #puts "You have initialized an object!"
  #end

  #after_find do |order|
    #puts "You have found an object!"
  #end


