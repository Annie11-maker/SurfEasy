class CreateSurfboards < ActiveRecord::Migration[7.1]
  def change
    create_table :surfboards do |t|
      t.string :size
      t.string :color
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
