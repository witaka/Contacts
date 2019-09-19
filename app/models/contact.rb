class Contact < ApplicationRecord
	
	has_many :phones, dependent: :destroy

	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, { headers: true}) do |row|
				@contact = Contact.create! row.to_hash.except!("phone")
				@phone = Phone.new(number: row["phone"])
				@phone.contact = @contact
				@phone.save
			end
  end
end


