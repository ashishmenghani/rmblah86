require "rails_helper"

RSpec.describe V1::FirmsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/firms").to route_to("firms#index")
    end

    it "routes to #new" do
      expect(:get => "/firms/new").to route_to("firms#new")
    end

    it "routes to #show" do
      expect(:get => "/firms/1").to route_to("firms#show", :firm_number => "1")
    end

    it "routes to #edit" do
      expect(:get => "/firms/1/edit").to route_to("firms#edit", :firm_number => "1")
    end

    it "routes to #create" do
      expect(:post => "/firms").to route_to("firms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/firms/1").to route_to("firms#update", :firm_number => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/firms/1").to route_to("firms#update", :firm_number => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/firms/1").to route_to("firms#destroy", :firm_number => "1")
    end

  end
end
