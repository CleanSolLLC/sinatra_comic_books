class CreateComicList < ActiveRecord::Migration[6.0]
  def change
  	create_table  :comics do |t|
  		t.string  :publisher
  		t.string  :year
  		t.string  :issue_num
  		t.string  :cover_price
  		t.string  :title
  		t.string  :subtitle 
  		t.string  :content	
  	end
  end
end
