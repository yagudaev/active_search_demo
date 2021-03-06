 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/titles", type: :request do
  # Title. As you add validations to Title, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Title.create! valid_attributes
      get titles_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      title = Title.create! valid_attributes
      get title_url(title)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_title_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      title = Title.create! valid_attributes
      get edit_title_url(title)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Title" do
        expect {
          post titles_url, params: { title: valid_attributes }
        }.to change(Title, :count).by(1)
      end

      it "redirects to the created title" do
        post titles_url, params: { title: valid_attributes }
        expect(response).to redirect_to(title_url(Title.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Title" do
        expect {
          post titles_url, params: { title: invalid_attributes }
        }.to change(Title, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post titles_url, params: { title: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested title" do
        title = Title.create! valid_attributes
        patch title_url(title), params: { title: new_attributes }
        title.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the title" do
        title = Title.create! valid_attributes
        patch title_url(title), params: { title: new_attributes }
        title.reload
        expect(response).to redirect_to(title_url(title))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        title = Title.create! valid_attributes
        patch title_url(title), params: { title: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested title" do
      title = Title.create! valid_attributes
      expect {
        delete title_url(title)
      }.to change(Title, :count).by(-1)
    end

    it "redirects to the titles list" do
      title = Title.create! valid_attributes
      delete title_url(title)
      expect(response).to redirect_to(titles_url)
    end
  end
end
