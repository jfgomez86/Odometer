require 'spec_helper'

describe Users::ProfilesController, "Routing" do
  it { {get: "/profiles/1"}.should route_to(controller: "users/profiles",
                                              action: "show",
                                              id: "1") }
end

describe Users::ProfilesController, "Actions" do

  describe "on GET to #show" do
    before do
      @user = Factory(:user)
    end

    it "should set the @user instance variable" do
      get :show, id: @user.id
      assigns(:user).should eql(@user)
    end

    it "should render the users/profiles/show template" do
      get :show, id: @user.id
      should render_template("users/profiles/show")
    end
  end
end
