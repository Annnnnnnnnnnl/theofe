class Vessel < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true
  validates :vessel_type, presence: true
  validates :dwt, presence: true
  validates :age, presence: true
  validates :imo_no,presence: true
  validates :country_built, presence: true
  validates :delivery_area, presence: true
  validates :delivery_date, presence: true
  validates :description, presence: true

end
