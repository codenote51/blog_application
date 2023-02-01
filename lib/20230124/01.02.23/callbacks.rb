class User < ApplicationRecord
  validates :login, :email, presence: true

  before_validation :ensure_login_has_a_value


  before_create do
    self.name = name.capitalize if name.blank?
  end

  private
  def ensure_login_has_a_value
    if login.nil?
      self.login = email unless email.blank?   
    end
  end


end