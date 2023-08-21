require "rails_helper"



RSpec.describe DashboardController, type: :controller do
  let(:maintenance_backlog) { class_double(MaintenanceBacklog) }
  before { allow(maintenance_backlog).to receive(:number_of_cards).and_return(1)}

  it 'should have the number of cards in the maintenance backlog' do
    get :index
    expect(maintenance_backlog).to have_received(:number_of_cards)
  end
end
