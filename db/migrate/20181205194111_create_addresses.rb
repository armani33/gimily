class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :full_name
      t.string :street
      t.string :city
      t.string :state_province_region
      t.integer :zip_code
      t.string :country
      t.integer :phone_number
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
