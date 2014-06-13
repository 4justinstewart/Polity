class AddAddressToWards < ActiveRecord::Migration
  def change
    add_column :wards, :address, :string
  end
end
