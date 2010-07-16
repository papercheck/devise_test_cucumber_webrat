require 'spec_helper'

describe "Users Routes" do

  it "recognizes and generates /users for GET" do
    { :get => "/users" }.should route_to(:controller => "beers", :action => "index")
  end

  it "recognizes and generates /users for POST" do
    { :post => "/users" }.should route_to(:controller => "registrations", :action => "create")
  end

  it "recognizes and generates /users/sign_up for GET" do
    { :get => "/users/sign_up" }.should route_to(:controller => "registrations", :action => "new")
  end

end
