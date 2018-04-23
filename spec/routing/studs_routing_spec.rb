require "rails_helper"

RSpec.describe StudsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/studs").to route_to("studs#index")
    end

    it "routes to #new" do
      expect(:get => "/studs/new").to route_to("studs#new")
    end

    it "routes to #show" do
      expect(:get => "/studs/1").to route_to("studs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/studs/1/edit").to route_to("studs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/studs").to route_to("studs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/studs/1").to route_to("studs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/studs/1").to route_to("studs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/studs/1").to route_to("studs#destroy", :id => "1")
    end

  end
end
