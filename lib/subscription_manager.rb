require './lib/subscription'

@subscription = []

def main_menu
  loop do
    puts "Press 'a' to add a subscription"
    puts "Press 'e' to edit a subscription"
    puts "Enter 'date' to list all subscriptions sorted by renewal date"
    puts "Enter 'tax' to list all subscriptions and the total deduction for this and last tax year"
    puts "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'a'
      add_subscription
    elsif main_choice == 'e'
      edit_subscription

    elsif main_choice == 'date'
      list_all_subscriptions sorted by renewal date
    elsif main_choice == 'subj'
      list_all_subscriptions sorted by subject
    elsif main_choice == 'tax'
      list_subscription_deductions

    elsif main_choice == 'x'
      puts "Good-bye!"
      exit
    else
      puts "Sorry, that wasn't a valid option."
    end
  end
end