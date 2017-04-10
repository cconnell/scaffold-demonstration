class User < ApplicationRecord
  has_many :cheeps

  validates :name, presence: true
  validates :email, presence: true
  validates :title, presence: true
end
