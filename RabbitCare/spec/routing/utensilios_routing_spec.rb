require "rails_helper"

RSpec.describe UtensiliosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/utensilios").to route_to("utensilios#index")
    end

    it "routes to #new" do
      expect(:get => "/utensilios/new").to route_to("utensilios#new")
    end

    it "routes to #show" do
      expect(:get => "/utensilios/1").to route_to("utensilios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/utensilios/1/edit").to route_to("utensilios#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/utensilios").to route_to("utensilios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/utensilios/1").to route_to("utensilios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/utensilios/1").to route_to("utensilios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/utensilios/1").to route_to("utensilios#destroy", :id => "1")
    end
  end
end
