class CreateWards < ActiveRecord::Migration
  def change
    create_table :wards do |t|
      t.integer :ward_number
      t.string :address1
      t.string :address2
      t.string :zip
      t.integer :alderman_id, index: true
      # t.references :legislator, index: true

      t.timestamps
    end
  end
end

#NOTES: WARDS: need user method to populate intended redundancy field for alderman lookup