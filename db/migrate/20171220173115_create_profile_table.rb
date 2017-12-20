class CreateProfileTable < ActiveRecord::Migration[5.1]
  def change 
  	  	create_table :profile do |t|
  	  	t.string :user_id
  	end
  end
end
