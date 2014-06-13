class CreateWards < ActiveRecord::Migration
  def change
    create_table :wards do |t|
      t.integer :ward_number
      t.date :term_start
      t.date :term_end
      t.references :legislator, index: true

      t.timestamps
    end
  end
end
