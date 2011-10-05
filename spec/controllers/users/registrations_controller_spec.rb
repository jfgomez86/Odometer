require 'spec_helper'

describe Users::RegistrationsController, "Routing" do
  it { {get: "/users/sign_up"}.should route_to(controller: "users/registrations",
                                                         action: "new") }
  it { {get: "/users/cancel"}.should route_to(controller: "users/registrations",
                                                         action: "cancel") }
  it { {post: "/users"}.should route_to(controller: "users/registrations",
                                                         action: "create") }
  it { {get: "/users/edit"}.should route_to(controller: "users/registrations",
                                                         action: "edit") }
  it { {put: "/users"}.should route_to(controller: "users/registrations",
                                                         action: "update") }
  it { {delete: "/users"}.should route_to(controller: "users/registrations",
                                                         action: "destroy") }
end

describe Users::RegistrationsController, "Actions" do
  describe "on GET to #new" do
    #it "should create a new car instance" do
      #get :new
      #assigns(:user).should_not be_nil
    #end
  end
end
