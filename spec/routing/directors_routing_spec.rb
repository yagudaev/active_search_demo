require "rails_helper"

RSpec.describe DirectorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/directors").to route_to("directors#index")
    end

    it "routes to #new" do
      expect(get: "/directors/new").to route_to("directors#new")
    end

    it "routes to #show" do
      expect(get: "/directors/1").to route_to("directors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/directors/1/edit").to route_to("directors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/directors").to route_to("directors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/directors/1").to route_to("directors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/directors/1").to route_to("directors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/directors/1").to route_to("directors#destroy", id: "1")
    end
  end
end
