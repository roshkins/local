require 'spec_helper'

describe ClientController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'supplier'" do
    it "returns http success" do
      get 'supplier'
      response.should be_success
    end
  end

  describe "GET 'customer'" do
    it "returns http success" do
      get 'customer'
      response.should be_success
    end
  end

end
