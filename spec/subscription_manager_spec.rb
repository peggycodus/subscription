require('rspec')
require('subscription_manager')

describe ('subscription') do

  it 'is initialized with a subscription name and an amount' do
    test_subscription = Subscription.new('Treehouse', 25.00)
    test_subscription.should be_an_instance_of Subscription
  end

end