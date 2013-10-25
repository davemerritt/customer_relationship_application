class Contact
	attr_accessor :last_name, :email, :note, :id

	def first_name
		@first_name
	end

	def first_name=(value)
		@first_name = value
	end

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end
end