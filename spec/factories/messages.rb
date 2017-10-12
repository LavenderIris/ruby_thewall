FactoryGirl.define do
  factory :message do
    # message Array.new(number) { (Array('A'..'Z') + Array('a'..'z')).sample }.join
    message "test message, is this"
    # user User.first
    user
  end

 
end
