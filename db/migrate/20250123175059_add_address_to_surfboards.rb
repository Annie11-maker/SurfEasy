class AddAddressToSurfboards < ActiveRecord::Migration[7.1]
  def change
    add_column :surfboards, :address, :string
  end
end
