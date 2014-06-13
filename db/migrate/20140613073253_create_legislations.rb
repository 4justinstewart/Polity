class CreateLegislations < ActiveRecord::Migration
  def change
    create_table :legislations do |t|
      t.string :status
      t.string :type
      t.date :opened_date
      t.date :closed_date

      t.timestamps
    end
  end
end
