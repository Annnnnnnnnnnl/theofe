class CreateVessels < ActiveRecord::Migration[5.0]
  def change
    create_table :vessels do |t|
      t.string :type
      t.string :dwt
      t.integer :age
      t.string :country_built
      t.string :delivery_area
      t.date :delivery_date
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
