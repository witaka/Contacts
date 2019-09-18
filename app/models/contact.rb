class Contact < ApplicationRecord

	require 'csv'
	# validates :first_name, :last_name, :email, :phone, :address_line_1, :city, presence: true

	def self.import(file)
		CSV.foreach(file.path, { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
				Contact.create! row.to_hash
		end
  end
end