# require 'rails_helper'

# RSpec.describe User, :type => :model do
#   subject {
#     User.new(name: "Anything",
#       email: "test.1@bacancy.com",
#       id: 1)
#   }

#   it "is valid with valid attributes" do
#     expect(subject).to be_valid
#   end

#   it "is not valid without a name" do
#     subject.name = nil
#     expect(subject).to_not be_valid
#   end

#   it "is not valid without an email" do
#     subject.email = nil
#     expect(subject).to_not be_valid
#   end
# end

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

    it "ensures that valid name will be saved" do
      user = User.new(name: "Stella", email: "test.1@bacancy.com")
      expect(user).to be_valid
    end
  end
end