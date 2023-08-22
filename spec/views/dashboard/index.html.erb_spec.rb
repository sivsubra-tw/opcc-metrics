require 'rails_helper'

RSpec.describe 'dashboard/index.html.erb', type: :view do
  it 'displays the number of cards in the Maintenance Backlog list' do
    render
    assert_select '.data_item', '20'
  end
end
