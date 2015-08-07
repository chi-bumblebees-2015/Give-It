require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:test_item) {Item.new(name:'blanket')}

  it 'has a name' do
    expect(test_item.name).to eq("blanket")
  end

  it 'can belong to a wishlist' do
    :test_list.wishlist = User.new()

  end
end
