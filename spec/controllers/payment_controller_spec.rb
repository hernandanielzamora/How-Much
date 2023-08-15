require 'rails_helper'

RSpec.describe 'Payment', type: :request do
  before(:example) do
    @user = User.create(name: 'Salman', email: 'fpsapc@gmail.com', password: '123456')
    @group = Group.create(icon: 'icon.png', name: 'Group', user_id: @user.id)
    @payment = Payment.create(name: 'Transaction', amount: '100', group_id: @group.id, user_id: @user.id,
                            author_id: @user.id)
  end

  describe 'GET /payments' do
    before(:example) { get('/groups/1/payments') }
    it 'Returns http found' do
      expect(response).to have_http_status(:found)
    end
    it 'The user is redirected to sign_in' do
      expect(response).to redirect_to(new_user_session_path)
    end
    it 'Includes the correct placeholder text' do
      expect(response.body).to include 'redirected'
    end
  end
end