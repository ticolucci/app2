class Account < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :validatable
  attr_accessible :login, :password, :password_confirmation

  validates :login, :presence => true, :uniqueness => true

  def email_required?
    false
  end
end
