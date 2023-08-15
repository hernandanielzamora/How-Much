# spec/models/payment_spec.rb

require 'rails_helper'

RSpec.describe Payment, type: :model do
  before(:each) do
    @user = User.create(name: 'Hernán Zamora', email: 'hernanzamora1999@gmai.com', password: '123456')
    @group = Group.create(icon: 'icon.png', name: 'Wifi', user_id: @user.id)
    @payment = Payment.create(name: 'July', amount: 100, group_id: @group.id, user_id: @user.id,
                            author_id: @user.id)

  end

  describe "validations" do
    it "is valid with valid attributes" do
      expect(@payment).to be_valid
    end

    it "is not valid without a name" do
      @payment.name = nil
      expect(@payment).not_to be_valid
    end

    it "is not valid without an amount" do
      @payment.amount = nil
      expect(@payment).not_to be_valid
    end

    it "is not valid without a user" do
      @payment.user_id = nil
      expect(@payment).not_to be_valid
    end

    it "is not valid if amount is zero" do
      @payment.amount = 0
      expect(@payment).not_to be_valid
    end

    it "is not valid if author does not belong to the same user" do
      @payment.author_id = 2
      expect(@payment).not_to be_valid
    end
  end
end
