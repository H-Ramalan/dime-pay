require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  before do
    user = create(:user)
    sign_in user
    create(:category, name: 'Groceries', user:)
    create(:category, name: 'Travel', user:)
  end

  scenario 'User views a list of categories' do
    visit categories_path
    expect(page).to have_content('Groceries')
    expect(page).to have_content('Travel')
  end
end
