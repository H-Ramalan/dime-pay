class Transaction < ApplicationRecord
  belongs_to :user
  has_many :transaction_categories
  belongs_to :category
  has_many :categories

  validates :user_id, presence: true
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
