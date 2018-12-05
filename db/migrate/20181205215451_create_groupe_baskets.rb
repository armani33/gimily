class CreateGroupeBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :groupe_baskets do |t|
      t.references :groupe, foreign_key: true
      t.references :item, foreign_key: true
      t.timestamps
    end
  end

  def change
    remove_column :items, :groupe_id
  end
end
