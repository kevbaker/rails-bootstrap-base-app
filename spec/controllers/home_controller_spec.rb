require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'secure'" do
    it "should be successful" do
      get 'secure'
      response.should be_success
    end
  end

end
