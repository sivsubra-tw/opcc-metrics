require "rails_helper"



RSpec.describe DashboardController, type: :controller do
  it "assigns @backlog" do
    allow(MaintenanceBacklog).to receive(:number_of_cards).and_return(3)
    get :index
    expect(assigns(:backlog)).to eq(3)
  end
end
