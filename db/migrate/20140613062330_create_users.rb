class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.references :ward, index: true
      t.string :email
      t.string :address
      t.string :voter_registration

      t.timestamps
    end
  end
end
