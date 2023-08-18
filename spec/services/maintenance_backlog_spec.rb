require "rails_helper"

RSpec.describe MaintenanceBacklog, "#number_of_cards" do
  it "returns the number of cards in the Maintenance Backlog list" do
    maintenanceBacklog = MaintenanceBacklog.new
    expect(maintenanceBacklog.number_of_cards).to eq 8
  end
end