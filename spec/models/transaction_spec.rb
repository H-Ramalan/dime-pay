# spec/models/transaction_spec.rb
require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it 'is not valid without a name' do
    user = User.create(name: 'Test', email: 'test@example.com', password: 'password')
    transaction = Transaction.new(amount: 35.0, user_id: user.id)
    expect(transaction).not_to be_valid
  end

  it 'is not valid without an amount' do
    user = User.create(name: 'Test', email: 'test@example.com', password: 'password')
    transaction = Transaction.new(name: 'Example Transaction', user_id: user.id)
    expect(transaction).not_to be_valid
  end

  it 'is not valid without an author (user)' do
    transaction = Transaction.new(name: 'Example Transaction', amount: 100.0)
    expect(transaction).not_to be_valid
  end
end
