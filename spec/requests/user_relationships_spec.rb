require 'rails_helper'

RSpec.describe "UserRelationships", type: :request do
  describe "GET /user_relationships" do
    it "works! (now write some real specs)" do
      get user_relationships_path
      expect(response).to have_http_status(200)
    end
  end
end
