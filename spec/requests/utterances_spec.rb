require 'rails_helper'

RSpec.describe "Utterances", :type => :request do
  describe "GET /utterances" do
    it "works! (now write some real specs)" do
      get utterances_path
      expect(response.status).to be(200)
    end
  end
end
