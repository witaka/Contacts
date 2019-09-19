class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :title
      t.string :number
      t.belongs_to :contact, foreign_key: true

      t.timestamps
    end
  end
end
