require 'rails_helper'

RSpec.describe Charity, type: :model do
  let(:test_charity) {Charity.new(name:"Lake View Mission", description:"test description", contact_name:"Sara Thomas", contact_email:"sara@sara.com",password_hash:"password")}
  it 'has a name' do

  end

  it 'has a description' do
    expect(test_charity.name).to eq("Lake View Mission")
  end

  it 'has a contact name' do
    expect(test_charity.description).to eq("test description")
  end

  it 'has a contact email' do
    expect(test_charity.contact_name).to eq("Sara Thomas")
  end

  it 'has an email' do
    expect(test_charity.contact_email).to eq("sara@sara.com")
  end

  it 'has a password hash' do
    expect(test_charity.password_hash).to eq("password")
  end



end
