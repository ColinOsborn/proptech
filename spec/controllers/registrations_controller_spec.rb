require 'rails_helper'

RSpec.describe "User Registrations", type: :request do
  describe "POST /users" do
    context "with valid params" do
      let(:valid_params) do
        {
          user: {
            name: "Test User",
            email: "test@example.com",
            password: "password123",
            password_confirmation: "password123"
          }
        }
      end

      it "creates a new user" do
        expect {
          post new_user_registration_path, params: valid_params
          binding.pry
        }.to change(User, :count).by(1)

        # expect(response).to redirect_to(root_path) # or your custom redirect
        # follow_redirect!
        # expect(response.body).to include("Welcome")
      end
    end

    context "with invalid params" do
      let(:invalid_params) do
        {
          user: {
            name: "test user",
            email: "invalidemail",
            password: "123",
            password_confirmation: "321"
          }
        }
      end

      it "does not create a user" do
        expect {
          post user_registration_path, params: invalid_params
        }.not_to change(User, :count)

        expect(response.body).to include("error") # or the actual error text
      end
    end
  end
end
