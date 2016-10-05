require 'rails_helper'

RSpec.describe "ListMembers", type: :request do
  describe "GET /list_members" do
    it "works! (now write some real specs)" do
      get list_members_path
      expect(response).to have_http_status(200)
    end
  end
end
