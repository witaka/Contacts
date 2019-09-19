class RemovePhoneFromContact < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :phone
  end
end
