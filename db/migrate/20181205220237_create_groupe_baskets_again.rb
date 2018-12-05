class CreateGroupeBasketsAgain < ActiveRecord::Migration[5.2]
  def change
    create_table :groupe_baskets_agains do |t|
      t.references :groupe, foreign_key: true
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
