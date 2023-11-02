class TransactionCategory < ApplicationRecord
  belongs_to :transaction_record, class_name: 'Transaction', foreign_key: 'transaction_id'
  belongs_to :category

  validates :expense_id, presence: true
  validates :category_id, presence: true
end
