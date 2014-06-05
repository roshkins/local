# config/initializers/geocoder.rb
Geocoder.configure(

  # geocoding service (see below for supported options):
  :lookup => :nominatim,

  # geocoding service request timeout, in seconds (default 3):
  :timeout => 3,

  :cache => Redis.new(:host => 'localhost', :port => 6379),
  :cache_prefix => "location_"

)
