class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :company, :string
    add_column :users, :jobtitle, :string
    add_column :users, :tel, :string
  end
end
