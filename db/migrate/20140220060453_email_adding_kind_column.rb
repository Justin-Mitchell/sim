class EmailAddingKindColumn < ActiveRecord::Migration
  def change
    add_column :emails, :kind, :string
  end
end
