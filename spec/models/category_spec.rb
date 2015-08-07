require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:test_category) {Category.new(name:"Environment")}

  it "has a name" do
    expect(test_category.name).to eq("Environment")
  end

end
