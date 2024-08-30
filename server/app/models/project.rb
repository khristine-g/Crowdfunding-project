class Project < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  belongs_to :category
  has_many :contributions
  has_many :comments

  validates :title, presence: true
  validates :image, presence: true
  validates :small_description, presence: true
  validates :detailed_description, presence: true
  validates :goal_amount, numericality: { greater_than: 0 }
  validates :amount_raised, numericality: { greater_than_or_equal_to: 0 }

  # Initialize amount_raised to 0 
  after_initialize :set_default_amount_raised, if: :new_record?

  private

  def set_default_amount_raised
    self.amount_raised ||= 0
  end
end
