class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :img_url, :text
    add_column :users, :twitter_handle, :string
  end
end
