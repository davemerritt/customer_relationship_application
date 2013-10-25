class CRM
	def initialize(name)
		@name = name
	end
	#The main menu, where the user selects what they wish to do.
	def print_menu
		puts "[1] Add a contact"
		puts "[2] Modify a contact"
		puts "[3] Delete a contact"
		puts "[4] Display all contacts"
		puts "[5] Display an attribute"
		puts "[6] Exit"
		puts "Enter a number: "
	end

	#this prings the menu, asks for a selection, and converts it
	#to an integer for selection purposes.
	def menu
		print_menu
		selection = gets.to_i
		options(selection)
	end
	#these are the different options that can be selected,
	#matching up with the menu items.
	def options(selection)
		when 1 
		  add_contact
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
#calling new instance of the class, and the method 
#on the instance.
crm = CRM.new(My crm)
crm.print_menu
