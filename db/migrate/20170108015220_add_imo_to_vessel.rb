class AddImoToVessel < ActiveRecord::Migration[5.0]
  def change
    add_column :vessels, :imo_no, :integer
  end
end
