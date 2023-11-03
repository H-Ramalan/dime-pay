require 'rails_helper'

RSpec.feature 'Transactions', type: :feature do
  before do
    @user = User.create(name: 'User', email: 'test@gmail.com', password: '123456')
    sign_in @user
    @category = Category.create(name: 'Travel', icon: 'icon', user: @user)
    @transaction = Transaction.create(name: 'trip', amount: 344, user: @user)
    visit '/categories/category_id'
  end

  it 'should have category name' do
    expect(page).to have_content('Travel')
  end

  it 'should have button to add new transaction' do
    expect(page).to have_content('Add a new transaction')
  end

  it 'should display name of transaction' do
    expect(page).to have_content('trip')
  end

  it 'should dispaly total amount for the category' do
    expect(page).to have_content('$344')
  end
end
