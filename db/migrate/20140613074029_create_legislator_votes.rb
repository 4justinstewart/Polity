class CreateLegislatorVotes < ActiveRecord::Migration
  def change
    create_table :legislator_votes do |t|
      t.date :date_of_vote
      t.integer :legislator_id
      t.integer :legislation_id
      t.string :vote

      t.timestamps
    end
  end
end
