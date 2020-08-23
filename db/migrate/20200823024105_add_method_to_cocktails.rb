class AddMethodToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :method, :text
  end
end
