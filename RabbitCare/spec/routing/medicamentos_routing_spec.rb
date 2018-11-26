require "rails_helper"

RSpec.describe MedicamentosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/medicamentos").to route_to("medicamentos#index")
    end

    it "routes to #new" do
      expect(:get => "/medicamentos/new").to route_to("medicamentos#new")
    end

    it "routes to #show" do
      expect(:get => "/medicamentos/1").to route_to("medicamentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/medicamentos/1/edit").to route_to("medicamentos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/medicamentos").to route_to("medicamentos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/medicamentos/1").to route_to("medicamentos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/medicamentos/1").to route_to("medicamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/medicamentos/1").to route_to("medicamentos#destroy", :id => "1")
    end
  end
end
