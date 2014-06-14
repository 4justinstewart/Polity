class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      # t.string :alderman_id, index: true
      # t.string :voter_registration

      t.timestamps
    end
  end
end

#TODOS: Add PAPERCLIP
#NOTES: DISCUSS OPTIMIZTIONS: USERS-need user method to populate intended redundancy field for alderman lookup