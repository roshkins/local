class Offer < ActiveRecord::Base

  belongs_to :supplier

  after_create :expire_cache

  def expire_cache
    Geocoder.cache.expire(:all)
  end
  

end
