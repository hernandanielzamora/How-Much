require 'rails_helper'

RSpec.describe 'group/index', type: :feature do
  before(:each) do
    @user = User.create(name: 'Hernán Zamora', email: 'hernanzamora1999@gmail.com', password: '123456')
    @group = Group.create(icon: 'icon.png', name: 'Group', user_id: @user.id)
    @payment = Payment.create(name: 'Wifi', amount: '100', group_id: @group.id, user_id: @user.id,
                              author_id: @user.id)

    visit new_user_session_path
    fill_in 'Email', with: 'hernanzamora1999@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
  end

  it 'Logged user can visit the page' do
    visit groups_path

    expect(page).to have_content 'Total payments:'
    expect(page).to have_content(@group.name)
  end

  it 'Logged user can visit the page' do
    visit new_group_path
    expect(page).to_not have_content 'CATEGORIES'
    expect(page).to have_content 'All fields are mandatory'
    expect(page).to have_css('form')
    expect(page).to have_css('input[type=submit]')
  end
end
