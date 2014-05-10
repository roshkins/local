class ClientController < ApplicationController
  def index
    @search = Search.new
    @supplier = Supplier.new
  end

  def supplier
  end

  def customer
  end
end
