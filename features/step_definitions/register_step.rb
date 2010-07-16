Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end

Given /^I am a new, confirmed user with email (.*) and password (.*)$/ do |email,password|
  u = User.create(:email => email, :password => password, :password_confirmation => password)
  u.confirm!
#  visit('/users/sign_in')
#  And %{I fill in "user_email" with "#{email}"}
#  And %{I fill in "user_password" with "#{password}"}
#  And %{I press "Sign in"}
end

Then "I should print the response" do
  puts '------------------------------------------------'
  puts response.body.inspect
end