require 'spec_helper'

describe User, "Relationships" do
  it { should have_one(:car) }

  describe User, "on creation" do
    before do
      @user_attributes = {
        full_name: "Jose",
        email: "jose.gomez@koombea.com",
        password: "password",
        password_confirmation: "password"
      }
      @car_attributes = {
        make: "Chevrolet",
        model: "Spark GT 2011",
        initial_odometer: "3456"
      }
    end

    it "should receive a car's attributes and store the car" do
      @user = User.new(@user_attributes.merge(car_attributes: @car_attributes))

      expect {
        @user.save
      }.to change(Car, :count).by(1)
    end
  end
end

describe User, "Validations" do
end
