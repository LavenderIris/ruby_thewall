require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #wall" do
    it "returns http success" do
      get :wall
      expect(response).to have_http_status(:success)
    end
  end

end
