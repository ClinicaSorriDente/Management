class Admin < ApplicationRecord
  has_secure_password
  validates :usuario, length: { minimum: 3 }, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 5 }
end
