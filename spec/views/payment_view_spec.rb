require 'rails_helper'

RSpec.describe 'payments#new', type: :feature do
  before(:each) do
    @user = User.create(name: 'Hernán Zamora', email: 'hernanzamora1999@gmai.com', password: '123456')
    @group = Group.create(icon: 'icon.png', name: 'Wifi', user_id: @user.id)
    @payment = Payment.create(name: 'July', amount: 100, group_id: @group.id, user_id: @user.id,
                            author_id: @user.id)

    visit new_user_session_path
    fill_in 'Email', with: 'hernanzamora1999@gmai.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'

    visit(new_group_payment_path(@group))
  end

  context 'Testing payments/new page: ' do
    it 'The logged user can enter the page' do
      expect(page).to have_content 'All fields are mandatory'
    end

    it 'The add a new payment has a form' do
      expect(page).to have_css('form')
    end

    it 'The add a new payment form has a name field' do
      expect(page).to have_css('input#payment_name')
    end

    it 'The add a new payment has an amount field' do
      expect(page).to have_css('input#payment_amount')
    end

    it 'The add a new payment has a submit button' do
      expect(page).to have_css('input[type=submit]')
    end
  end
end