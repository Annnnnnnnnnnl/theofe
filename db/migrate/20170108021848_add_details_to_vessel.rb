class AddDetailsToVessel < ActiveRecord::Migration[5.0]
  def change
    add_column :vessels, :name, :string
    add_column :vessels, :price, :string
  end
end
