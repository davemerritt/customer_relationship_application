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
	case
		when 1 
		  add_a_contact
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

#contact class for collecting and storing contact information.

class Contact
	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

#Requests information. Still needs to store it somewhere.

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
	end
end

#This will be where the information is stored, and pulled from.

class Rolodex
	@contacts = []
	@id = 1000

#Class method. For something widely used, in this case,
#adding contact info. 

	def self.add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
	end

	def self.contacts
		@contacts
	end
end

#Calling new instance of the class, and the method 
#on the instance.

crm = CRM.new("My Crm")
crm.print_menu

