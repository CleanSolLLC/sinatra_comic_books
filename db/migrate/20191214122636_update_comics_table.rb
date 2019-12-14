class UpdateComicsTable < ActiveRecord::Migration[6.0]
  def change
  	change_table :comics do |t|
  		t.rename :content, :condition
  		t.string :html_link_to_dealer
  	end
  end
end
