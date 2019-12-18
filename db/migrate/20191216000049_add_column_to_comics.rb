class AddColumnToComics < ActiveRecord::Migration[6.0]
  def change
  	add_column :comics, :user_id, :string
  end
end
