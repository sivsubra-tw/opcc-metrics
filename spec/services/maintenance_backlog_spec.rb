require "rails_helper"

RSpec.describe MaintenanceBacklog, "#number_of_cards" do
  let(:trello_cards_in_list_response) { MaintenanceBacklog.number_of_cards() }
  it "returns the number of cards in the Maintenance Backlog list" do
    expect(trello_cards_in_list_response).to eq(1)
  end
end
