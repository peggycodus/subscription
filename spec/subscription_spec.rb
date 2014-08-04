require ('rspec')
require ('subscription')

describe ('Subscription') do

	before do
    Subscription.clear
  	end

  it 'is initialized with a subscription name and an amount' do
    test_subscription = Subscription.new('Treehouse', "online course", "25.00")
    test_subscription.should be_an_instance_of Subscription
  end

	describe '.clear' do
	  	it 'empties out all of the saved subscriptions' do
		  Subscription.new('Spectrum', "digital magazine", "45.00").save
		  Subscription.clear
		  Subscription.all.should eq []
	    end
	end
end