class CreateUserAddresses < ActiveRecord::Migration
  def change
    create_table :user_addresses do |t|
      t.references :ward, index: true
      t.references :user, index: true
      t.string :address_street1
      t.string :address_street2
      t.string :zip

      t.timestamps
    end
  end
end
