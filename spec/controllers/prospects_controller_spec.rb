require 'rails_helper'

RSpec.describe ProspectsController, type: :controller do

   describe "GET index" do
     it "has a 204 status code" do
        get :index
        expect(response.status).to eq(204)
     end
     it "renders the index template" do
       get :index
       render_template 'prospects/index'
     end
     it "assigns @prospects to prospects" do
       get :index
       assert_equal Prospect.all, assigns(:prospects)
     end 
   end
  
   describe "POST create" do
    it "has a 200 status code" do
      post :create
      expect(response.status).to eq(200)
     end
     it "render the new template" do
       get :new
       render_template 'prospects/new'
     end
     it "assigns @prospect to prospect" do
       get :new
       assert_equal Prospect.new, assigns(:prospect)
     end
   end

end
