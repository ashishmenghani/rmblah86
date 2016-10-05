require 'rails_helper'

RSpec.describe "OpenGroups", type: :request do
  describe "GET /open_groups" do
    it "works! (now write some real specs)" do
      get open_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
