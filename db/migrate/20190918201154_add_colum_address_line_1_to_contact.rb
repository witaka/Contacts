class AddColumAddressLine1ToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :address_line_1, :string
    add_column :contacts, :city, :string  
    add_column :contacts, :province, :string 
    add_column :contacts, :country_name, :string 
    add_column :contacts, :postcode, :string 
    add_column :contacts, :date_added, :date
    add_column :contacts, :how_did_you_hear_about_us, :string 
    add_column :contacts, :what_is_your_budget, :string 
    add_column :contacts, :what_is_your_favourite_color, :string 
 
  end
end
