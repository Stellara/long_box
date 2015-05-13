require 'rails_helper'

RSpec.describe "Comics", type: :request do
  describe "GET /comics" do
    it "works!" do
      get comics_path
      expect(response).to have_http_status(200)
    end

    it "links to the new comic form" do
      get comics_path
      expect(response.body).to include(new_comic_path)
    end
  end
end
