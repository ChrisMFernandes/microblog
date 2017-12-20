class CreatePostsTable < ActiveRecord::Migration[5.1]
  def change
  	  	create_table :posts do |t|
          t.text :entry, limit: 151
          t.string :image_url
          t.string :user_id
    end
  end
end
