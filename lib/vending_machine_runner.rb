def welcome
  puts "Hello, please enter a command: "
  puts "(c)ontents - Prints the contents of the vending machine."
  puts "(i)nsert money - Takes in coins and prints total money inserted."
  puts "(v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter."
  puts "(p)urchase - Displays a prompt to enter the slot they'd like to purchase."
  puts "Which do you choose?"
end
def user_input
  gets.chomp
end

def machine_response(input)
  if input == "c"
    puts "Okay here's what we have!"
  elsif input == "i"
    puts "Please insert your money"
  elsif input == "v"
    puts "Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter."
  elsif input == "p"
    puts "Please enter the slot of the item you'd like to vend"
  else
    "That isn't a valid input, try again"
  end
end
welcome
choice = user_input
machine_response(choice)
