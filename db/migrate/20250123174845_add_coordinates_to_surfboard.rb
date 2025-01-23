class AddCoordinatesToSurfboard < ActiveRecord::Migration[7.1]
  def change
    add_column :surfboards, :latitude, :float
    add_column :surfboards, :longitude, :float
  end
end
