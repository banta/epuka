require "spec_helper"

describe DiseasesController do
  describe "routing" do

    it "routes to #index" do
      get("/diseases").should route_to("diseases#index")
    end

    it "routes to #new" do
      get("/diseases/new").should route_to("diseases#new")
    end

    it "routes to #show" do
      get("/diseases/1").should route_to("diseases#show", :id => "1")
    end

    it "routes to #edit" do
      get("/diseases/1/edit").should route_to("diseases#edit", :id => "1")
    end

    it "routes to #create" do
      post("/diseases").should route_to("diseases#create")
    end

    it "routes to #update" do
      put("/diseases/1").should route_to("diseases#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/diseases/1").should route_to("diseases#destroy", :id => "1")
    end

  end
end
