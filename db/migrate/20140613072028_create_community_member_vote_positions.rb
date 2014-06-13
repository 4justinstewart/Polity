class CreateCommunityMemberVotePositions < ActiveRecord::Migration
  def change
    create_table :community_member_vote_positions do |t|
      t.integer :community_member_id, index: true
      t.references :legislation, index: true
      t.boolean :agree
      t.text :feedback

      t.timestamps
    end
  end
end
