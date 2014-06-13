class CreateAldermen < ActiveRecord::Migration
  def change
    create_table :aldermen do |t|
      t.references :ward, index: true
      t.date :start_date
      t.date :end_date
      t.string :party_affiliation
      t.references :user, index: true

      t.timestamps
    end
  end
end
