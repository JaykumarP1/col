require 'rails_helper'

RSpec.describe "Studs", type: :request do
  describe "GET /studs" do
    it "works! (now write some real specs)" do
      get studs_path
      expect(response).to have_http_status(200)
    end
  end
end
