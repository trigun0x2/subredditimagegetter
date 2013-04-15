require "spec_helper"

describe GetImagesController do
  describe "routing" do

    it "routes to #index" do
      get("/get_images").should route_to("get_images#index")
    end

    it "routes to #new" do
      get("/get_images/new").should route_to("get_images#new")
    end

    it "routes to #show" do
      get("/get_images/1").should route_to("get_images#show", :id => "1")
    end

    it "routes to #edit" do
      get("/get_images/1/edit").should route_to("get_images#edit", :id => "1")
    end

    it "routes to #create" do
      post("/get_images").should route_to("get_images#create")
    end

    it "routes to #update" do
      put("/get_images/1").should route_to("get_images#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/get_images/1").should route_to("get_images#destroy", :id => "1")
    end

  end
end
