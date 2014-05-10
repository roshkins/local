class Search < ActiveRecord::Base

  belongs_to :industry

  geocoded_by :location
  after_validation :geocode

end
