require "spec_helper"

describe PicksController do
  describe "routing" do

    it "routes to #index" do
      get("/picks").should route_to("picks#index")
    end

    it "routes to #new" do
      get("/picks/new").should route_to("picks#new")
    end

    it "routes to #show" do
      get("/picks/1").should route_to("picks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/picks/1/edit").should route_to("picks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/picks").should route_to("picks#create")
    end

    it "routes to #update" do
      put("/picks/1").should route_to("picks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/picks/1").should route_to("picks#destroy", :id => "1")
    end

  end
end
