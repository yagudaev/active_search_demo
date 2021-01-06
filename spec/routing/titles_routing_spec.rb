require "rails_helper"

RSpec.describe TitlesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/titles").to route_to("titles#index")
    end

    it "routes to #new" do
      expect(get: "/titles/new").to route_to("titles#new")
    end

    it "routes to #show" do
      expect(get: "/titles/1").to route_to("titles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/titles/1/edit").to route_to("titles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/titles").to route_to("titles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/titles/1").to route_to("titles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/titles/1").to route_to("titles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/titles/1").to route_to("titles#destroy", id: "1")
    end
  end
end
