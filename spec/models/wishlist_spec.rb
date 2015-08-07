require 'rails_helper'

RSpec.describe Wishlist, type: :model do
  let(:test_list) {Wishlist.new(name:"My Wishlist")}

  it 'has a name' do
    expect(test_list.name).to eq("My Wishlist")
  end

end
