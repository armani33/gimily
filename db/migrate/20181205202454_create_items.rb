class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :page_url
      t.string :title
      t.string :text_description
      t.string :brand
      t.integer :price
      t.integer :shipping_amount
      t.string :images
      t.references :groupe, foreign_key: true
      t.timestamps
    end
  end
end
