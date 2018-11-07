module AppComponent
  RSpec.describe WelcomeController, type: :controller do
    routes { AppComponent::Engine.routes }

    describe "GET index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

  end
end
