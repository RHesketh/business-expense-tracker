require 'rails_helper'

RSpec.describe User, type: :model do
  it 'forces email to lowercase on creation' do
    user = described_class.create!(email: 'Test@example.com', password: 'abc', password_confirmation: 'abc')
    expect(user.reload.email).to eq 'test@example.com'
  end
end
