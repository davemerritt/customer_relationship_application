class CRM
	attr_accessor :name

	def initialize(name)
		name = name
	end

	#The main menu, where the user selects what they wish to do.

	def print_menu
		puts "--------"
		puts "[1] Add a contact"
		puts "[2] Modify a contact"
		puts "[3] Delete a contact"
		puts "[4] Display all contacts"
		puts "[5] Display an attribute"
		puts "[6] Exit"
		puts "--------"
		puts "Enter a number: "
	end 

#This prints the menu, asks for a selection, and converts it
#to an integer for selection purposes.
#Now asks for input, undef local var "add_new"
	def menu
		print_menu
		selection = gets.to_i
		options(selection)
	end
#Define the method before you call it.
	def add_new
		print "First Name?"
		first_name = gets.chomp
		print "Last Name?"
		last_name = gets.chomp
		print "Email Address?"
		email = gets.chomp
		print "Add a note: "
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
		Rolodex.new(contact)
	end

#Get the contacts to save, before working on how to 
#edit them.

	def modify_contact
		puts "Which contact would you like to modify?"
		modify = gets.chomp
	end
#These are the different options that can be selected,
#matching up with the menu items, which are available 
#through 'selection'(user input).

	def options(selection)
		case 
			when 1 
			  add_new
			when 2
			  modify_contact
			when 3
			  delete_contact
			when 4 
			  display_all
			when 5
			  display_attribute
			when 6
			  exit
			else
			  not_an_opt
		end
	end
end

#You need a method for each name now. 

crm = CRM.new("My Crm")
crm.menu

