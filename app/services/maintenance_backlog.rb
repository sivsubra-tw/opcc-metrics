class MaintenanceBacklog
  def self.number_of_cards
    response = HTTParty.get('https://api.trello.com/1/lists/6475c1c3729de9dbf68491b3/cards?key=' + ENV["TRELLO_API_KEY"] + '&token=' + ENV["TRELLO_TOKEN"])
    JSON.parse(response&.body || "{}").count
  end
end
