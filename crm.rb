require_relative "crm2"
require_relative "contact"
require_relative "rolodex"

class CRM
	attr_accessor :name

	def initialize(name)
		name = name
	end

	def print_menu
		puts "--------"
		puts "[1] Add a contact"
		puts "[2] Modify a contact"
		puts "[3] Delete a contact"
		puts "[4] Display all contacts"
		puts "[5] Display an attribute"
		puts "[6] Exit"
		puts "Enter a number: "
	end 

	def menu
		print_menu
		selection = gets.to_i
		options(selection)
	end

	def add_new
		print "First Name? "
		first_name = gets.chomp
		print "Last Name? "
		last_name = gets.chomp
		print "Email Address? "
		email = gets.chomp
		print "Add a note: "
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
		rolodex1 = Rolodex.new
		rolodex1.add_contact(contact)		
		puts menu
	end

	def modify_contact
		puts "Which contact id to modify?"
		mod_id = gets.chomp.to_i

	end

	def options(selection)
		case selection
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

crm = CRM.new("My Crm")
crm.menu

