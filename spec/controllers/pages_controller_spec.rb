require 'spec_helper'

describe PagesController, "Routing" do
  it { {get: "/"}.should route_to(controller: "pages", action: "index") }
end
