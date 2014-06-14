class CreateCommunitySupports < ActiveRecord::Migration
  def change
    create_table :community_supports do |t|
      t.references :user, index: true
      t.references :legislation, index: true
      t.boolean :support
      t.text :feedback

      t.timestamps
    end
  end
end
