class RenameVesselType < ActiveRecord::Migration[5.0]
  def change
    rename_column :vessels, :type, :vessel_type
  end
end
