class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :direction
      t.string :name
      t.string :subject
      t.text :body
      t.string :to
      t.string :from
      t.string :user_id

      t.timestamps
    end
  end
end
