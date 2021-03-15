require 'rails_helper'

RSpec.describe User, type: :model do

  context 'validations' do
    it "ensures the presence of name" do
      user = User.new(name: "").save
      expect(user).to eq(false)
    end

    it "ensures that name has two or more characters" do
      user = User.new(name: "j").save
      expect(user).to eq(false)
    end

    it "ensures that valid name and email will be saved" do
      user = User.new(name: "Stella", email: "test.1@bacancy.com")
      expect(user).to be_valid
    end
  end
end