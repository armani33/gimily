class RenamegroupeBasketsAgainsTogroupeBaskets < ActiveRecord::Migration[5.2]
  def change
    rename_table :groupe_baskets_agains, :groupe_baskets
  end
end
