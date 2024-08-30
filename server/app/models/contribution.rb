class Contribution < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :phone_number, presence: true, format: { with: /\A[+\d][\d\s-]+\z/, message: "must be a valid phone number" }
end
