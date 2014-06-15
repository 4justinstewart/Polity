class AddTitleToLegislationTable < ActiveRecord::Migration
  def change
  	add_column :legislations, :title, :string
  end
end
