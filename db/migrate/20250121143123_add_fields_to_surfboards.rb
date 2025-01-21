class AddFieldsToSurfboards < ActiveRecord::Migration[7.1]
  def change
    add_column :surfboards, :name, :string
    add_column :surfboards, :image_url, :string
    add_column :surfboards, :description, :text
  end
end
