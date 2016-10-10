require "rails_helper"

RSpec.describe V1::CurrentChatsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/current_chats").to route_to("current_chats#index")
    end

    it "routes to #new" do
      expect(:get => "/current_chats/new").to route_to("current_chats#new")
    end

    it "routes to #show" do
      expect(:get => "/current_chats/1").to route_to("current_chats#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/current_chats/1/edit").to route_to("current_chats#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/current_chats").to route_to("current_chats#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/current_chats/1").to route_to("current_chats#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/current_chats/1").to route_to("current_chats#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/current_chats/1").to route_to("current_chats#destroy", :id => "1")
    end

  end
end
