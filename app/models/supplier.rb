class Supplier < ActiveRecord::Base

  belongs_to :industry
  has_one :user

  has_many :offers

  geocoded_by :address
  after_validation :geocode



  accepts_nested_attributes_for :user

  after_create :expire_cache

  def expire_cache
    Geocoder.cache.expire(:all)
  end


end
