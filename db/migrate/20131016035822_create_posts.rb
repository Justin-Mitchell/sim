class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text        :content
      t.integer     :user_id
      t.string      :title
      t.boolean     :published
      t.datetime    :published_at
      t.text        :embedded_media
      t.timestamps
    end
    
    add_index :posts, [:user_id, :created_at]
  end
end