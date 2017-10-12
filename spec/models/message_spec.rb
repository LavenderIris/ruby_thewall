require 'rails_helper'

RSpec.describe Message, type: :model do
  context "username testing with invalid context" do
    it "should not save if username less than 5 characters" do
      m = Message.new(message:"bsdff")
      expect(m).to be_invalid
    end

    it "should not save if username less than 5 characters" do
      m = Message.new(message:"")
      expect(m).to be_invalid
    end

  end

  # now with factory girl
  context "With valid attributes" do 
    it "should save" do
      expect(build(:message)).to be_valid
    end

    it "should save" do
      m = Message.new(message:"Username1 MNessage", user_id:1)
      expect(m).to be_valid
    end

  end
end
