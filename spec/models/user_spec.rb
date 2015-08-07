require 'rails_helper'

RSpec.describe User, type: :model do
  let(:test_user) {User.new(username:"Lilly Smith", email:"lilly@lilly.com", password_hash:"password")}

  it 'has a username' do
    expect(test_user.username).to eq("Lilly Smith")
  end

  it 'has an email' do
    expect(test_user.email).to eq("lilly@lilly.com")
  end

  it 'has a password hash' do
    expect(test_user.password_hash).to eq("password")
  end
end
