# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :login, format: { with: URI::MailTo::EMAIL_REGEXP },
                    presence: true,
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }, if: :password_digest_changed?

  before_save { login.downcase! }
end
