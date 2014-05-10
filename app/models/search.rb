class Search < ActiveRecord::Base

  belongs_to :industry
  belongs_to :user

  geocoded_by :location
  after_validation :geocode

end
