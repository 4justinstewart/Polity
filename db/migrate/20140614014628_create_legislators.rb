class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.references :ward, index: true
      t.references :user, index: true
      t.date :term_start
      t.date :term_end
      t.string :party_affiliation

      t.timestamps
    end
  end
end

#TODOS: add association name change for alderman
#TODOS: add association name change for ward