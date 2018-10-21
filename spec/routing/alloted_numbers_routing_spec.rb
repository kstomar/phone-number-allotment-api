require "rails_helper"

RSpec.describe AllotedNumbersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/alloted_numbers").to route_to("alloted_numbers#index")
    end

    it "routes to #show" do
      expect(:get => "/alloted_numbers/1").to route_to("alloted_numbers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/alloted_numbers").to route_to("alloted_numbers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/alloted_numbers/1").to route_to("alloted_numbers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/alloted_numbers/1").to route_to("alloted_numbers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/alloted_numbers/1").to route_to("alloted_numbers#destroy", :id => "1")
    end
  end
end
