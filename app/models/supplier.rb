class Supplier < ActiveRecord::Base

  belongs_to :industry
  has_many :offers

  geocoded_by :address
  after_validation :geocode

end
