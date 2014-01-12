class CreateSocialLinks < ActiveRecord::Migration
  def change
    create_table :social_links do |t|
      t.string :service
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
