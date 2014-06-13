class CreateLegislationSponsors < ActiveRecord::Migration
  def change
    create_table :legislation_sponsors do |t|
      t.integer :legislator_id
      t.integer :legislation_id

      t.timestamps
    end
  end
end
