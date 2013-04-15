class CreateGetImages < ActiveRecord::Migration
  def change
    create_table :get_images do |t|
      t.string :link
      t.string :subreddit

      t.timestamps
    end
    add_index :get_images, :subreddit
  end
end
