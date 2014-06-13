class CreateLegislationSponsors < ActiveRecord::Migration
  def change
    create_table :legislation_sponsors do |t|
      t.integer :legislator_id, index: true
      t.integer :legislation_id, index: true

      t.timestamps
    end
  end
end
