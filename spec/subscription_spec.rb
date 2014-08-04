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

	describe '#save' do
    it 'adds a subscription to the array of saved subscriptions' do
      test_subscription = Subscription.new('Code School', "online course", "25.00")
      test_subscription.save
      Subscription.all.should eq [test_subscription]
    end
  end
end