class CreateLegislatorVotes < ActiveRecord::Migration
  def change
    create_table :legislator_votes do |t|
      t.references :legislator, index: true
      t.references :legislation, index: true
      t.string :vote
      t.date :vote_date

      t.timestamps
    end
  end
end
