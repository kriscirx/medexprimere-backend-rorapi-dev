require 'rails_helper'

RSpec.describe "Management::Patients", type: :request do
  describe "GET /management_patients" do
    it "works! (now write some real specs)" do
      get management_patients_path
      expect(response).to have_http_status(200)
    end
  end
end
