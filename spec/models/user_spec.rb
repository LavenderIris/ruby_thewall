require 'rails_helper'

RSpec.describe User, type: :model do
  context "username testing with invalid context" do
    it "should not save if username less than 5 characters" do
      user1 = User.new(username:"bsdff")
      expect(user1).to be_invalid
    end

    it "should not save if username less than 5 characters" do
      user1 = User.new(username:"")
      expect(user1).to be_invalid
    end

  end

  # now with factory girl
  context "With valid attributes" do 
    it "should save" do
      expect(build(:user)).to be_valid
    end

    it "should save" do
      user1 = User.new(username:"Username1")
      user1.save
      expect(user1).to be_valid
    end

  end

end


