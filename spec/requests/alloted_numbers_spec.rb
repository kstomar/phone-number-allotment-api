require 'rails_helper'

RSpec.describe "AllotedNumbers", type: :request do
  describe "GET /alloted_numbers" do
    it "works! (now write some real specs)" do
      get alloted_numbers_path
      expect(response).to have_http_status(200)
    end
  end
end
