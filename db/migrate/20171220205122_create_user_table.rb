class CreateUserTable < ActiveRecord::Migration[5.1]
  def change
  	create_table :user do |t|
          t.string :name
          t.string :password
          t.string :profile_id
     end
  end
end
