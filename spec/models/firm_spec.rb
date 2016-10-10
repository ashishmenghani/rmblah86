require 'rails_helper'

describe "Firm" do
  let(:firm1){ create(:firm) }
  let(:firm2){ create(:firm) }
  let(:firm3){ create(:firm) }
  let(:firm4){ create(:firm) }
end

RSpec.describe Firm, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
