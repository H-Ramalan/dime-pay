require 'rails_helper'

describe 'Categories page', type: :feature do
  before :each do
    @user = User.create(name: 'User', email: 'test@email.com', password: '12345')
    sign_in @user
    @category = Category.create(name: 'Travel', icon: 'icon', user: @user)
    @transaction = Transaction.create(name: 'Transaction 1', amount: 35, user: @user)
    visit categories_path
  end

  it 'should have a heading Categories' do
    expect(page).to have_content('Categories')
  end

  it 'should have name of category name' do
    expect(page).to have_content('Travel')
  end

  it 'should allow user to add a new category' do
    expect(page).to have_content('Create new category')
  end
end
