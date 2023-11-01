class Transaction < ApplicationRecord
  belongs_to :user
  has_many :transaction_categories
  belongs_to :category
  has_many :categories, through: :transaction_categories
end
