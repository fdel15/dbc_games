class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :gravatar_url, :string
    add_column :users, :cohort, :string
  end
end
