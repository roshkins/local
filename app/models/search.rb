class Search < ActiveRecord::Base

  belongs_to :industry
  belongs_to :user

  geocoded_by :location
  after_validation :geocode

  after_create :store_results

  serialize :offer_ids
  serialize :supplier_ids

  validates :location, presence: true

  def store_results
    # grab local suppliers
    if industry_id.nil?
      suppliers = Supplier.near(location)
    else
      suppliers = Supplier.where("industry_id = ?", industry_id).near(location)
    end
    update_attribute(:supplier_ids, suppliers.map(&:id))

    # drag the offer id's from the supplier objects
    offer_ids_array = []
    suppliers.each do |s|
      offer_ids_array.push s.offer_ids
    end
    update_attribute(:offer_ids, offer_ids_array.flatten)

  end

end
