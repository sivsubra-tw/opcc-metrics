class DashboardController < ApplicationController
  def index
    @backlog = MaintenanceBacklog.number_of_cards
  end
end
