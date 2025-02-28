class AddPicUrlToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :pic_url, :string
  end
end
