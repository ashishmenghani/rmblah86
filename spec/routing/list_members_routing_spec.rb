require "rails_helper"

RSpec.describe V1::ListMembersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/list_members").to route_to("list_members#index")
    end

    it "routes to #new" do
      expect(:get => "/list_members/new").to route_to("list_members#new")
    end

    it "routes to #show" do
      expect(:get => "/list_members/1").to route_to("list_members#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/list_members/1/edit").to route_to("list_members#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/list_members").to route_to("list_members#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/list_members/1").to route_to("list_members#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/list_members/1").to route_to("list_members#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/list_members/1").to route_to("list_members#destroy", :id => "1")
    end

  end
end
