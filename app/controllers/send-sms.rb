require 'rubygems'
require 'twilio-ruby'

account_sid = "AC3b594d44c7c6fbcea09f7c415c151f8f"
auth_token = "d68235c6bf849d83b71a6faf83ecde8c"
client = Twilio::REST::Client.new account_sid, auth_token

from = "+17033439372" # Your Twilio number

friends = {
"+12028123078" => "Jason",
"+17032393080" => "Jake"
}
friends.each do |key, value|
  client.account.messages.create(
    :from => from,
    :to => key,
    :body => "Hello fellow coding dojo peoples!!!"
  )
  puts "Sent message to #{value}"
end
