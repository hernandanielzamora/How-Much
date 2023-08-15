require 'rails_helper'

RSpec.describe 'entities#index', type: :feature do
  before(:each) do
    @user = User.create(name: 'Salman', email: 'fpsapc@gmail.com', password: '123456')
    @group = Group.create(icon: 'icon.png', name: 'Group', user_id: @user.id)
    @payment = Payment.create(name: 'Transaction', amount: '100', group_id: @group.id, user_id: @user.id,
                            author_id: @user.id)

    visit new_user_session_path
    fill_in 'Email', with: 'fpsapc@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'

    visit(new_group_payment_path(@group))
  end

  it "displays a list of payments" do
    expect(page).to have_selector("h1", text: "Payments")

    @payments.each do |payment|
      expect(page).to have_selector("div p", text: "Name: #{payment.name}")
      expect(page).to have_selector("div p", text: "Amount: #{payment.amount}")
      expect(page).to have_selector("div p", text: "Date: #{payment.created_at.to_date}")
    end

    expect(page).to have_selector("p#total_amount", text: "Total Amount: #{@total_amount}")
  end

  it "displays links" do
    expect(page).to have_link("ADD A NEW TRANSACTION", href: new_group_payment_path(@group))
    expect(page).to have_link("Go Back", href: groups_path)
  end
end