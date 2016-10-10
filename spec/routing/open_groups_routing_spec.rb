require "rails_helper"

RSpec.describe V1::OpenGroupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/open_groups").to route_to("open_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/open_groups/new").to route_to("open_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/open_groups/1").to route_to("open_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/open_groups/1/edit").to route_to("open_groups#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/open_groups").to route_to("open_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/open_groups/1").to route_to("open_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/open_groups/1").to route_to("open_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/open_groups/1").to route_to("open_groups#destroy", :id => "1")
    end

  end
end
