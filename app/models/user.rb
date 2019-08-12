class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  before_create :force_email_lowercase

  private

  def force_email_lowercase
    self.email = email.downcase
  end
end
