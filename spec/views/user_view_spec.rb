require 'rails_helper'

RSpec.describe 'users index', type: :feature do
  before(:each) do
    @user = User.create(name: 'Hernán Zamora', email: 'hernanzamora1999@gmail.com', password: '123456')

    visit root_path
  end

  describe 'User index page' do
    it 'Shows the content' do
      expect(page).to have_content('How Much?')
    end
  end
end
