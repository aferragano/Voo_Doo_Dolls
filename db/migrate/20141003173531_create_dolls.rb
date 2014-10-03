class CreateDolls < ActiveRecord::Migration
  def change
  	create_table :dolls do |t|
  	  t.text :story
  	  t.string :name
  	  t.integer :pins, default: 0
  	  t.belongs_to :user
  	  t.timestamps
  	end
  end
end
