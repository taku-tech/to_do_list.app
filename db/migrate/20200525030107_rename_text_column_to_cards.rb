class RenameTextColumnToCards < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cards, :text, :memo
  end
end
