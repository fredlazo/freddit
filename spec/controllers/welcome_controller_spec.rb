require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  #render_template passes because you used generate controller Welcome index about,
  #thus ensuring that these tests would pass.
  #See the connection is in $ rake routes
  #Proof: even though my controller is EMPTY, the tests will pass

    describe "GET index" do
      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
    end

    describe "GET about" do
    it "renders the about template" do
      get :about
      expect(response).to render_template("about")
    end
  end

end
