class Category < ApplicationRecord
  belongs_to :user
  has_many :transaction_categories
  has_many :transactions

  validates :user_id, presence: true
  validates :name, presence: true
  validates :icon, presence: true
end
