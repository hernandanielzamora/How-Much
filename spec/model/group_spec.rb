require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.create(name: 'Hernán Zamora', email: 'hernanzamora1999@gmai.com', password: '123456')
    @group = Group.create(icon: 'icon.png', name: 'Wifi', user_id: @user.id)
  end

  describe 'Group validations' do
    it 'Group is valid with valid attributes' do
      expect(@group).to be_valid
    end

    it 'Group is not valid without a name' do
      @group.name = nil
      expect(@group).to_not be_valid
    end

    it 'Group is not valid without an icon' do
      @group.icon = nil
      expect(@group).to_not be_valid
    end

    it 'Group is not valid without a user' do
      @group.user_id = nil
      expect(@group).to_not be_valid
    end
  end
end