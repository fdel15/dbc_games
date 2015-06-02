class AddProfileAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :employer, :string, default: "Currently Looking"
    add_column :users, :job_title, :string
    add_column :users, :quirk, :string, default: "I don't update my profile"
    add_column :users, :advice_tweet, :string
  end
end
