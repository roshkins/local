class Industry < ActiveRecord::Base

  has_many :suppliers
  has_many :searches

  has_and_belongs_to_many :categories

  def category_list
    categories.pluck(:name).join(", ")
  end



end
