require 'rails_helper'

RSpec.describe "Management::Encounters", type: :request do
  describe "GET /management_encounters" do
    it "works! (now write some real specs)" do
      get management_encounters_path
      expect(response).to have_http_status(200)
    end
  end
end
