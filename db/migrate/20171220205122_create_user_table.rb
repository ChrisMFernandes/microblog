class CreateUserTable < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |t|
          t.string :name
          t.string :password
          t.string :email
          t.string :profile_id
     end
  end
end
