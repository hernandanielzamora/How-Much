require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(name: 'Salman', email: 'fpsapc@gmail.com', password: '123456')
  end

  describe 'Validations' do
    it 'User is valid with valid attributes' do
      expect(@user).to be_valid
    end

    it 'User is not valid without a name' do
      @user.name = nil
      expect(@user).to_not be_valid
    end

    it 'User is not valid if name length is more than 100 characters' do
      @user.name = 'name' * 26
      expect(@user).to_not be_valid
    end

    it 'User is not valid without an email' do
      @user.email = nil
      expect(@user).to_not be_valid
    end

    it 'User is not valid without an password' do
      @user.password = nil
      expect(@user).to_not be_valid
    end
  end
end
